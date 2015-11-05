#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';
use Getopt::Long;
use Pod::Usage;
use Bio::SeqIO;
use Cwd;

my %opts = get_opts();
my @arg = @ARGV;
if ($opts{'help'} || $opts{'man'}) {
    pod2usage({
        -exitval => 0,
        -verbose => $opts{'man'} ? 2 : 1
    });
}
my $num = $opts{'number'}|| 500;
my $OutDir = $opts{'out_dir'} or getcwd;

use File::Path "make_path";

make_path $OutDir;

my $id =1;
for my $file (@arg){
my $seqIO_object = Bio::SeqIO -> new(
    -file => $file,
    -format => 'fasta',
    );
my $count1 = 0;
my $count2 = 1;

my $out_seqIO_obj = Bio::seqIO -> new(
                      -file => ">$OutDir/$file.$count2",
                      -format => 'fasta',
                     );
push my @out, $file.$count2;

while (my $seq_object = $seqIO_object -> next_seq){
  $out_seqIO_obj -> write_seq($seq_object);
  $count1 ++;
  if ($count1 % $num == 0){
    $count2 ++;
    $out_seqIO_obj = Bio::SeqIO -> new(
                       -file => "$OutDir/$file.$count2",
                       -format => 'fasta',
                      );
    push @out,$file.$count2;
  }
  else {next;}
} 
print "$id: $file\n";

for my $outfile (@out){
  print STDERR "-> $OutDir/$$outfile\n";
}
  $id ++;
}

say "Done.";

#
# Start coding here
#

# If you need @ARGV
# my @args = @ARGV;

say "OK";

# --------------------------------------------------
sub get_opts {
    my %opts;
    GetOptions(
        \%opts,
        'help',
        'man',
    ) or pod2usage(2);

    return %opts;
}

__END__

# --------------------------------------------------

=pod

=head1 NAME

01-fasta-splitter.pl - a script

=head1 SYNOPSIS

  01-fasta-splitter.pl -n 20 -o ~/split file1.fa [file2.fa ...] 

Options (defaults in parentheses):

  --number  The maxmimum number of sequences per file (500)
  --out_dir Output directory (cwd)
  --help   Show brief help and exit
  --man    Show full documentation
      

=head1 DESCRIPTION

Describe what the script does, what input it expects, what output it
creates, etc.

=head1 SEE ALSO

perl.

=head1 AUTHOR

Meng Lu E<lt>menglu@email.arizona.eduE<gt>.

=head1 COPYRIGHT

Copyright (c) 2015 menglu

This module is free software; you can redistribute it and/or
modify it under the terms of the GPL (either version 1, or at
your option, any later version) or the Artistic License 2.0.
Refer to LICENSE for the full license text and to DISCLAIMER for
additional warranty disclaimers.

=cut

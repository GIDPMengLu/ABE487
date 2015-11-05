#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';
use Getopt::Long;
use Pod::Usage;
use Bio::SeqIO;
use Bio::DB::Fasta;
use List::Util qw(min max);

my %opts = get_opts();

unless (@ARGV == 2){
  pod2usage();
}

my ($dbfile,$pattern) = @ARGV;

if ($opts{'help'} || $opts{'man'}) {
    pod2usage({
        -exitval => 0,
        -verbose => $opts{'man'} ? 2 : 1
    });
}

my $re_pattern = $pattern;

$re_pattern =~ s/\W//g;

my $out = Bio::SeqIO -> new(
                -file => '>'.$re_pattern. ".fa",
                -format => 'Fasta',
               );

my (@plist, @word, @number, @palist);
if ($re_pattern ne $pattern){
  @plist = split (//,$re_pattern);
  @word = grep (/\D/,@plist);
  @number = grep (/\d/, @plist);
  my $min = min @number;
  my $max = max @number;
  for ($min .. $max){
    push @palist, join('',@word, $_);
  }
}
else {
  @palist =();
  push @palist, $pattern;
}

my $db_obj = Bio::DB::Fasta -> new($dbfile);
my @id = $db_obj -> get_all_primary_ids;
my $ct =0;
my @matseq = ();

for my $fa_id (@id){
  my ($header, $newseq);
  for my $mat (@palist){
    if ($fa_id =~ /$mat/){
      my $id_seq_obj = $db_obj -> get_Seq_by_id($fa_id);
      $ct ++;
    }
  }
}


print "Searching '$dbfile' for '$pattern'\n";
print "Found $ct ids.\n";
if ($ct != 0){
  print "See results in '$re_pattern.fa'\n";
}


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

02-fasta-search.pl - a script

=head1 SYNOPSIS

  02-fasta-search.pl file.fa pattern 

Options:

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

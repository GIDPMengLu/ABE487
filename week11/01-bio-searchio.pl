#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';
use Getopt::Long;
use Pod::Usage;

my %opts = get_opts();

if ($opts{'help'} || $opts{'man'}) {
    pod2usage({
        -exitval => 0,
        -verbose => $opts{'man'} ? 2 : 1
    });
}

my $blastrep = shift or pod2usgae();
my $object = Bio::SearchIO -> new(
    -file => $blastrep,
    -format => 'blast'
    );

say join "\t", qw(query hit evalue);

my $cutoff = 1e-50;

while(my $res = $object -> next_result){
    whlie(my $hit = $res -> next_hit){
        my $sig = $hit -> significance;
        if($sig <= $cutoff){
            while(my $hithsp = $hit -> next_hsp){
                my $qname = $hithsp -> query_string;
                my $HitName = $hithsp -> hit_string;
                my $evalue = $hithsp -> evalue;
                say join "\t", $qname, $HitName, $evalue; 
                }
            }
    
        }
    
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

01-bio-searchio.pl - a script

=head1 SYNOPSIS

  01-bio-searchio.pl 

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

#!/usr/bin/env perl

use strict;
use warnings;
use autodie;

my $in  = shift;
my $out = shift;

if (!defined($in) or !defined($out)) {
    print "We can not find input file, please give us an input file\n";
}
else {
    open my $IN,  '<', $in;
    open my $OUT, '>', $out;

    my $title;
    my $sequence = '';
    while (my $line = <$IN>) {
        chomp($line);
        if ($line == ~/^>/) {
            if (length($sequence) > 0) {
                print $OUT $title, "reverse-complement\n", $sequence, "\n";
            }
            $title = $line;
        }
        else {
            $line     = ~tr/atcgATCG/tagcTAGC/;
            $sequence = reverse($line) . $sequence;
        }
    }
}

__END__

"use autodie"!

l. 11: Your error message doesn't tell the user the correct information:

    $ perl PR3.pl Perl_III.fasta.txt
    We can not find input file, please give us an input file

I gave an input file but no output file.  You should indicate the right
thing to do.

ll. 13-14: No global filehandles!



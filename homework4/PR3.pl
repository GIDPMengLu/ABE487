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
            $line     =~ tr/atcgATCG/tagcTAGC/;
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

l. 28: Use of "tr" with the binding operator was written as "= ~tr".

While you came close to creating the reverse complement, you never 
printed it.

Overall, the script didn't work (see output below).  

Two points off.

[gila@~/work/students/gidpmenglu/homework4]$ perl PR3.pl Perl_III.fasta.txt  out


Use of uninitialized value $_ in pattern match (m//) at PR3.pl line 20, <IN> lin


e 1.
Argument ">seq1" isn't numeric in numeric eq (==) at PR3.pl line 20, <IN> line 1.
Use of uninitialized value $_ in transliteration (tr///) at PR3.pl line 27, <IN> line 1.
Use of uninitialized value $_ in pattern match (m//) at PR3.pl line 20, <IN> line 2.
Argument "AAGAGCAGCTCGCGCTAATGTGATAGATGGCGGTAAAGTAAATGTCCTATGGGCCA..." isn't numeric in numeric eq (==) at PR3.pl line 20, <IN> line 2.
Use of uninitialized value $_ in transliteration (tr///) at PR3.pl line 27, <IN> line 2.
Use of uninitialized value $_ in pattern match (m//) at PR3.pl line 20, <IN> line 3.
Argument ">seq2" isn't numeric in numeric eq (==) at PR3.pl line 20, <IN> line 3.
Use of uninitialized value $_ in transliteration (tr///) at PR3.pl line 27, <IN> line 3.
Use of uninitialized value $_ in pattern match (m//) at PR3.pl line 20, <IN> line 4.
Argument "GCCACAGAGCCTAGGACCCCAACCTAACCTAACCTAACCTAACCTACAGTTTGATC..." isn't numeric in numeric eq (==) at PR3.pl line 20, <IN> line 4.
Use of uninitialized value $_ in transliteration (tr///) at PR3.pl line 27, <IN> line 4.
Use of uninitialized value $_ in pattern match (m//) at PR3.pl line 20, <IN> line 5.
Argument ">seq3" isn't numeric in numeric eq (==) at PR3.pl line 20, <IN> line 5.
Use of uninitialized value $_ in transliteration (tr///) at PR3.pl line 27, <IN> line 5.
Use of uninitialized value $_ in pattern match (m//) at PR3.pl line 20, <IN> line 6.
Argument "ATGAAAGTTACATAAAGACTATTCGATGCATAAATAGTTCAGTTTTGAAAACTTAC..." isn't numeric in numeric eq (==) at PR3.pl line 20, <IN> line 6.
Use of uninitialized value $_ in transliteration (tr///) at PR3.pl line 27, <IN> line 6.
Use of uninitialized value $_ in pattern match (m//) at PR3.pl line 20, <IN> line 7.
Argument ">seq4" isn't numeric in numeric eq (==) at PR3.pl line 20, <IN> line 7.
Use of uninitialized value $_ in transliteration (tr///) at PR3.pl line 27, <IN> line 7.
Use of uninitialized value $_ in pattern match (m//) at PR3.pl line 20, <IN> line 8.
Argument "ATGCTAACCAAAGTTTCAGTTCGGACGTGTCGATGAGCGACGCTCAAAAAGGAAAC..." isn't numeric in numeric eq (==) at PR3.pl line 20, <IN> line 8.
Use of uninitialized value $_ in transliteration (tr///) at PR3.pl line 27, <IN> line 8.

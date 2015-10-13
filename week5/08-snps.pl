#!/usr/bin/perl

use strict;
use warnings;

unless (@ARGV == 2) {
    die "Please provide two sequences.\n";
}

my $s1 = shift;
my $s2 = shift;

if ( length $s1 != length $s2 ) {
    print "Please ensure the sequences are the same length\n";
}
else {
    if ( $s1 eq $s2 ) {
        print "Found 0 SNPs\n";
    }
    else {
        my @ar1 = split( //, $s1 );
        my @ar2 = split( //, $s2 );
        my $num = 0;
        for ( my $i = 0 ; $i < scalar(@ar1) ; $i++ ) {
            if ( $ar1[$i] ne $ar2[$i] ) {
                print "Pos ", $i + 1, ": ", $ar1[$i], " => ", $ar2[$i],
                  "\n";
                $num++;
            }
        }
        print "Found ", $num, " SNPs\n";
    }
}

__END__

Format your code!!!!

Check the number of argument FIRST THING and die if not right.

Fails to create exact expected output.

#!/usr/bin/perl

use strict;
use warnings;

my @arr = @ARGV or die "Please provide a list of sequences.\n";

foreach my $seq (@arr) {
    my $SEQ = uc $seq;
    my $C   = $SEQ =~ tr/C//;
    my $G   = $SEQ =~ tr/G//;
    my $GC  = $C + $G;
    my $len = length $SEQ;
    print "--------------\n";
    print "Seq :",    $seq, "\n";
    print "Length :", $len, "\n";
    print "#GC :",    $GC,  "\n";
    print "%GC :", ( $GC / $len ) * 100, "\n";
}

__END__

Format your code!

Does not match expected output exactly.

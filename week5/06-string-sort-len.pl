#!usr/bin/perl

use strict;
use warnings;

my @seq = @ARGV or die "Please provide a list of sequences.\n";

if (@seq) {
    my @sorted_seq  = sort(  { length $a <=> length $b } @seq );
    my @reverse_seq = sort ( { length $b <=> length $a } @seq );
    print "sorted = ",  join( ',', @sorted_seq ),  "\n";
    print "reverse = ", join( ',', @reverse_seq ), "\n";
}

__END__

You should always "die" when the user fails to give you expected input.
This stops execution of the program and prints errors to STDERR which is
necessary for the test suite to pass the script.  In the future, points 
off for this.

You fail to create the EXACT expected output.

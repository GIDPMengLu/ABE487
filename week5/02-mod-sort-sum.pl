#!/usr/bin/perl

use strict;
use warnings;

@ARGV or die "Please provide a list of numbers\n";
my @list_num = @ARGV;
my $even_sum = 0;
my $odd_sum  = 0;

if (@list_num) {
    foreach my $num (@list_num) {
        if ( $num % 2 == 0 ) {
            $even_sum += $num;
        }
        else {
            $odd_sum += $num++;  # why do you do this post-increment?!
        }
    }
}

print "sum evens = ", $even_sum, "\n";
print "sum odds = ",  $odd_sum,  "\n";

__END__

When provided no arguments, you script needs to stop right away, not
print the sums.  You failed to create the expected output.  Next time
you will not recieve credit.

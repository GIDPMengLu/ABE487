#!/usr/bin/perl

use strict;
use warnings;

@ARGV or die "Please provide a list of numbers.\n";

my @list = @ARGV;

my @l1 = sort (@list);
my @l2 = sort ({$a <=> $b} @list);
my @l3 = sort ({$b <=> $a} @list);

print "default sort = ",join(',',@l1),"\n";
print "numerical sort = ",join(',',@l2),"\n";
print "reverse numberical sort = ",join(',',@l3),"\n";

__END__

You fail to check that you have any arguments.

You fail to create the EXACT expected output.

    Expected output:

        $ perl 03-sort.pl
        Please provide a list of numbers.

        $ perl 03-sort.pl 98 2 36 74 27 33
        default sort = 2, 27, 33, 36, 74, 98
        numerical sort = 2, 27, 33, 36, 74, 98
        reverse numerical sort = 98, 74, 36, 33, 27, 2

One point off.

#!usr/bin/perl

use strict;
use warnings;

my @arr = (101,2,15,22,95,33,2,27,72,15,52);
my @o1 = (101,2,15,22,95,33,2,27,72,15,52);
my @o2 = (101,2,15,22,95,33,2,27,72,15,52);
my @o3 = (101,2,15,22,95,33,2,27,72,15,52);

print "array = ", join(',',@arr),"\n";

my $popped_num = pop(@arr);
print "popped = ",$popped_num,", ", "array = ",join(',',@arr),"\n";
my $shift_num = shift(@o1);
print "shifted = ",$shift_num,", ", "array = ",join(',',@o1),"\n";
my @push_array = push(@02,12);
print "after push, array = ",join(',',@o2),"\n";
my @unshift_array = unshift @o3,4;
print "after unshift, array = ",join(',',@o3),"\n";

__END__

Why are you using four different arrays?  The assignment was to use one 
array and create the expected output.  

Two points off.

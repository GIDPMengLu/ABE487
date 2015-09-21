#!usr/bin/perl
use strict;
use warnings;

my $num1 = shift;
my $num2 = shift;

if (!defined($num1) or !defined($num2)){
print "Please provide two numbers\n";
}
else{
print $num1 + $num2, "\n";
}

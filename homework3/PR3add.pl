#!usr/bin/perl
use strict;
use warnings;

my $num1 = shift;
my $num2 = shift;

if (!defined($num1) or !defined($num2)){
print "Please provide two numbers\n";
}
else{
if($num1 < 0 or $num2 < 0){
print "Please provide two positive numbers\n";
}
else{
print $num1 + $num2,"\n";
}
}

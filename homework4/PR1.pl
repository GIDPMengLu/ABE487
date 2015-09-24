#!usr/bin/perl

use strict;
use warnings;

my $num1 = shift;
my $num2 = shift;

my $err = "err.txt";
my $output = "out.txt";

open (OUTFILE, '>', $output);
open (STDERR, '>', $err);

if(!defined($num1) or !defined($num2)){
print "Please type two real numbers\n";
}
else{
if($num1<0 or $num2<0){
print "The numbers have to be positive";
}
else{
if($num2 == 0){
print "The divisor cannot be zero";
}
else{
my $cal = $num1/$num2;
print OUTFILE $cal,"\n";
}
}
}

#!usr/bin/perl
use strict;
use warnings;

my $i = shift;
my $j = shift;
if(!defined($i) or !defined($j)){
print "Please type two numbers\n";
}
else{
if($i+$j == 0){
print "You are trying to trick me! We can not calculate the percentage\n";
}
else{
print "($i/($i+$j))*100=", ($i/($i+$j))*100,"%\n";
}
}

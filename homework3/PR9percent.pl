#!usr/bin/perl
use strict
use warnings

my $i = shift
my $j = shift

if(!defined($i) or !defined($j)){
print "Please provide two numbers\n";
}
else{
if(($i+$j)==0){
print "You are trying to trick me!\n";
}
else{
print printf ("%.2f\n",100*$i/($i+$j));
}
}


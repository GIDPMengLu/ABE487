#!usr/bin/perl
use strict;
use warnings;

my $str1 = shift;
my $str2 = shift;

if (!defined($str1) or !defined($str2)){
print "Please type two strings\n";
}
else{
if($str1 ne $str2){
print "They are different\n";
}
else{
print "They are the same\n";
}
}

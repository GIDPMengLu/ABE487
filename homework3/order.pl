#!usr/bin/perl
use strict;
use warnings;

my $str1 = shift;
my $str2 = shift;

if (!defined($str1) or !defined($str2)){
print "Please provide two strings\n";
}
else{
if(($str1 cmp $str2) > 0){
print "Wrong Order\n";
}
else{
print "Right Order\n";
}
}




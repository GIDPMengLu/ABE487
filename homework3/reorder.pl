#usr/bin/perl
use strict;
use warnings;

my $str1 = shift;
my $str2 = shift;

if (!defined($str1) or !defined($str2)){
print "Please type two strings\n";
}
else{
if(($str1 cmp $str2)>0){
print "$str2 $str1\n";
}
else{
print "$str1 $str2\n";
}
}

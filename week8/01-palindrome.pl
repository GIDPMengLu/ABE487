#!usr/bin/perl
use strict;
use warnings;

#chomp(my $str = <>);
my $str = shift;
chomp($str = <>);
if(!defined($str)){
print "Please provide a word or phase";
}
else{
if ( $str eq reverse($str) ) {
     print "Yes\n";
}
else {
     print "No \n";
}
}

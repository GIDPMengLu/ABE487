#!usr/bin/perl

use strict;
use warnings;

my @seq = @ARGV;

if(@seq){
my @sorted_seq = sort @seq;
my @reverse_seq = sort ({$b cmp $a}@seq);
print "sorted = ",join(',',@sorted_seq),"\n";
print "reverse = ",join(',',@reverse_seq),"\n";
}
else{
print "Please provide a list of sequences\n";
}

#!usr/bin/perl

use strict;
use warnings;

my @seq = @ARGV;

if(@seq){
my @sorted_seq = sort({length $a <=> length $b}@seq);
my @reverse_seq = sort ({length $b <=> length $a}@seq);
print "sorted = ",join(',',@sorted_seq),"\n";
print "reverse = ",join(',',@reverse_seq),"\n";
}
else{
print "Please provide a list of sequences\n";
}

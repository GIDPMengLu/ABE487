#!usr/bin/perl

use strict;
use warnings;

my @list = @ARGV;
my @l1 = ();
my @l2 = ();
my @l3 = ();

@l1 = sort (@list);
@l2 = sort ({$a <=> $b} @list);
@l3 = sort ({$b <=> $a} @list);

print "default sort = ",join(',',@l1),"\n";
print "numerical sort = ",join(',',@l2),"\n";
print "reverse numberical sort = ",join(',',@l3),"\n";

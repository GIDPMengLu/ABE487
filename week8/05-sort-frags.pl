#!usr/bin/perl

use strict;
use warnings;


my @seq = ();
while(<>){
@seq = split(/\^/);
my @sort = sort {length($a) <=>length($b)}@seq;
for (@sort){
print "$_\n";
}
}

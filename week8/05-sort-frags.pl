#!/usr/bin/env perl

use strict;
use warnings;

my $fh;
if(my $file = shift){
   open $fh, '<', $file;
}
else{
 $fh = \*STDIN;
}
my @seq = ();
while(<$fh>){
@seq = split(/\^/);
my @sort = sort {length($a) <=>length($b)}@seq;
for (@sort){
print "$_\n";
}
}

#!usr/bin/perl

use strict;
use warnings;

my $in = shift;
my $out = shift;

if(!defined($in) or !defined($out)){
print "We can not find input file, please give us an input file\n";
}
else{
open(IN,'<',$in);
open(OUT,'>',$out);

my $title;
my $sequence = '';
while(my $line = <IN>){
chomp($line);
if($line == ~/^>/){
if(length($sequence)>0){
print OUT $title,"reverse-complement\n",$sequence,"\n";
}
$title = $line;
}
else{
$line = ~tr/atcgATCG/tagcTAGC/;
$sequence = reverse($line).$sequence;
}
}
}




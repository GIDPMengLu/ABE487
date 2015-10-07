#!usr/bin/perl

use strict;
use warnings;



my $s1 = shift;
my $s2 = shift;

if (!defined($s1) or !defined($s2)){
print "Please provide two sequences\n";
}
else{
if (length $s1 != length $s2){
print "Please ensure the sequences are the same length\n";
}
else{
if ($s1 eq $s2){
print "Found 0 SNPs\n";
}
else{
my @ar1 = split(//,$s1);
my @ar2 = split(//,$s2);
my $num = 0;
for (my $i = 0; $i < scalar(@ar1);$i++){
if($ar1[$i] ne $ar2[$i]){
print "Pos ",$i+1,": ",$ar1[$i], " => ",$ar2[$i],"\n";
$num++;
}
}
print "Found ",$num, " SNPs\n"; 
}
}
}



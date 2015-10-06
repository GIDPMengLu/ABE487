#!usr/bin/perl

use strict;
use warnings;

my @arr = @ARGV;
my $len = 0;
my $GC = 0;

if(@arr){
foreach my $seq (@arr){
  my $SEQ = uc $seq;
  my $C = $SEQ =~ tr/C//;
  my $G = $SEQ =~ tr/G//;
  $GC=$C+$G;
  $len = length $SEQ;
  print "--------------\n";
  print "Seq :",$seq,"\n";
  print "Length :",$len,"\n";
  print "#GC :",$GC,"\n";
  print "%GC :",($GC/$len)*100,"\n";
}
}
else{
print "Please provide a list of sequence\n";
    }

#!/usr/bin/env/perl
use strict;
use warnings;
use feature 'say';

my $filename = $ARGV[0] or die "Please provide a sequence.\n";
if (open my $fh,'<',$filename){
  my $seq = <$fh>;
  if(!defined $seq){
     die "Zero-length sequence.\n";
   }
} 
else{
 $seq = "$filename";
}

my $k = $ARGV[1];
my $mer;

if (length($seq) == 1){
  print "Cannot get any 3 mers from a sequence of length 2.\n";
}
else{
  if(!defined $k){
$k = length($seq);
$mer = $seq;
}
my @kmers;
my $length = length($seq);
my $nmers = $length-$k+1;
  for (my $i = 0; $i+$k<=$length; $i++){
push @kmers, substr($seq,$i,$k);
}
my%hash;
  for my $base (@kmers){
$hash{$base}++;
}
my @uni = keys (%hash);
my $unicount = scalar(@uni);
my @value = values(%hash);
my $count = 0;
  for (my $j = 0; $j < scalar(@value); $j++){
my $knum = $value[$j];
if ($knum == 1){
$count++;
}
}
  printf "%-15s %10s\n", "Sequence length", $length; 
  printf "%-15s %10s\n", "Mer size", $k;
  printf "%-15s %10s\n", "Number of kmers", $nmer;
  printf "%-15s %10s\n", "Unique kmers", $unicount;
  printf "%-15s %10s\n", "Num. simgletons", $count;
if($nmer>1){
print "Most abundant";
my $numline = 0;
 
for my $base (sort{$hash{$b}<=>$hash{$a}} keys %hash){
my $num = $hash{$base};
$numline++;
if($num == 1||$numline >10){
last;
}
print "$base: $num";
}
}
}

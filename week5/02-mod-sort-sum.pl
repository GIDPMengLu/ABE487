#!usr/bin/perl

use strict;
use warnings;

my @list_num = @ARGV;
my $even_sum = 0;
my $odd_sum = 0;

if(@list_num){
foreach my $num (@list_num){
  if($num %2 == 0){
    $even_sum += $num;
}
else{
$odd_sum += $num++;
}
}
}
else{
print "Please provide a list of numbers\n";
}

print "sum evens = ",$even_sum,"\n";
print "sum odds = ",$odd_sum,"\n";

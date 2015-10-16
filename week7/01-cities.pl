#!/usr/bin/env/perl
use strict;
use warnings;
use Data::Dumper;

my %hash = (
  "Tucson" => "AZ",
  "Boston" => "MA",
  "Jackson" => "MS",
  "Dixon" => "NM",
  "Denton" => "TX",
  "Cincinnati" => "OH"
);

say Dumper(\%hash);
my $i = 0;

for my $cities (sort keys %hash){
  my $state = $hash{$cities};
  $i++;
  print "$i+1: $cities, $state\n";
}

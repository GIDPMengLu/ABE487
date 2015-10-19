#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;
use feature 'say';

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
  print "$i: $cities, $state\n";
}

__END__

Didn't compile.  I had to correct syntax/logic errors.

One point off.

<<<<<<< HEAD
#!/usr/bin/env/perl
use strict;
use warnings;
use Data::Dumper;
=======
#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;
use feature 'say';
>>>>>>> 81826c2e44fea2d1af5ff7e35e8c7d4cb39cb339

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
<<<<<<< HEAD
  print "$i+1: $cities, $state\n";
}
=======
  print "$i: $cities, $state\n";
}

__END__

Didn't compile.  I had to correct syntax/logic errors.

One point off.
>>>>>>> 81826c2e44fea2d1af5ff7e35e8c7d4cb39cb339

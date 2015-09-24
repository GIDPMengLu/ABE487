#!usr/bin/perl
use strict;
use warnings;


my $in = 'Perl_III_nobody.txt';
my $out = 'upper.out';

open(IN, '<', $in);
open(OUT, '>', $out);

while(my $line = <IN>){
chomp($line);
my $upperline = uc($line);
print OUT "upperline\n";
}


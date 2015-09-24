#!usr/bin/perl
use strict;
use warnings;
use autodie;

my $in = 'Perl_III.nobody.txt';
open IN, '<', $in;
while (my $line = <>){
chomp($line);
my $index_nobody = index($line,'Nobody');
my $index_somebody = index($line, 'Somebody');
if($index_somebody >= 0){
warn("somebody is here: $index_somebody\n");
}
}

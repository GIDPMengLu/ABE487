#!/usr/bin/env perl

use strict;
use warnings;
use autodie;

my $in  = 'Perl_III_nobody.txt';
my $out = 'upper.out';

open my $IN,  '<', $in;
open my $OUT, '>', $out;

while (my $line = <$IN>) {
    my $upperline = uc($line);
    print OUT "upperline";
}

__END__

Either "use autodie" or be sure to check the result of your "open"!

Never use global symbols for you file handles! Use scalars!

Don't chomp if you're going to print the newline.

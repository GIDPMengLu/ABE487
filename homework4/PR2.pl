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
Here is what your script did when I ran it because the input file 
didn't exist!

    [gila@~/work/students/gidpmenglu/homework4]$ perl PR2.pl
    readline() on closed filehandle IN at PR2.pl line 12.

ll. 10-11: Never use global symbols for you file handles! Use scalars!

Don't chomp if you're going to print the newline.

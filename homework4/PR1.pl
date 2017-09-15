#!/usr/bin/env perl

use strict;
use warnings;

my $num1 = shift;
my $num2 = shift;

my $err    = "err.txt";
my $output = "out.txt";

#open (OUTFILE, '>', $output);
#open (STDERR, '>', $err);

if (!defined($num1) or !defined($num2)) {
    print "Please type two real numbers\n";
}
else {
    if ($num1 < 0 or $num2 < 0) {
        print "The numbers have to be positive";
    }
    else {
        if ($num2 == 0) {
            print "The divisor cannot be zero";
        }
        else {
            my $cal = $num1 / $num2;
            print $cal, "\n";
        }
    }
}

__END__

Don't open STDOUT/STDERR, just print to the appropriate handled.  Let the 
user sort it out.  

  $ program.pl 1>out 2>err

One point off.

Please format your code with proper indentation.  Use the "perltidy" 
program if you need:

[hpc:service0@~]$ type perltidy
perltidy is /rsgrps/bhurwitz/hurwitzlab/perl5/bin/perltidy

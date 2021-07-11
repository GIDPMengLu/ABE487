#!/usr/bin/perl

use strict;
use warnings;

@ARGV or die "Please provide a list of numbers.\n";

my @list_number =  @ARGV;

my @even = ();
if (@list_number) {
    foreach my $number (@list_number) {
        if ( $number % 2 == 0 ) {
            push( @even, $number );
        }
    }
    print "evens = ", join( ', ', @even ), "\n";
}

__END__

Please format your code!

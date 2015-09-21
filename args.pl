#!usr/bin/env perl
use strict;
use warnings;

say "The args are",join(',',@ARGV);
say "There are", scalar(@ARGV), "argument";

unless(@ARGV){
die "Where are my arguments?\n";
}

my $first = shift;
say "The first arg is '$first'";
say "The args are now",join(',',@ARGV);

sub report{

my @args = @_;
my ($first, $second, @rest) =@_;
my ($first, $second, @rest) =split(/,/,"john, perl, ringo, geoge");


}

 


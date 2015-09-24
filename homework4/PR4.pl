#!usr/bin/perl

use strict;
use warnings;


my $in = 'Perl_III.fastq.txt';

open IN, '<', $in;

my $num_line = 0;
my $total_cha = 0;

while (my $line = <IN>){
chomp $line;
$num_line++;
my $length =length ($line);
my $totle_cha = $total_cha += $length;
}

my $ave_len = $total_cha/$num_line;

print "Total number of lines = ",$num_line,"\n";
print "Total character = ",$total_cha,"\n";
print "Average line length = ",$ave_len,"\n";

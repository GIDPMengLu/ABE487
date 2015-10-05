#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';

my $in = 'Perl_III.fastq.txt';

open my $IN, '<', $in;

my $num_line  = 0;
my $total_cha = 0;

while (my $line = <$IN>) {
    chomp $line;
    $num_line++;
    my $length = length($line);
    my $totle_cha = $total_cha += $length;
}

my $ave_len = $total_cha / $num_line;

say "Total number of lines = ", $num_line;
say "Total character = ",       $total_cha;
say "Average line length = ",   $ave_len;

__END__

use autodie/no global file handles

You should not have chomped the lines as that is data to be counted:

 [gila@~/work/students/gidpmenglu/homework4]$ perl PR4.pl
 Total number of lines = 120
 Total character = 7800
 Average line length = 65
 [gila@~/work/students/gidpmenglu/homework4]$ wc Perl_III.fastq.txt
      120     150    7920 Perl_III.fastq.txt

The "say" feature is "print" with a newline.  Saves typing!

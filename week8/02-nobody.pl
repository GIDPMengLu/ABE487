#!usr/bin/perl

use strict;
use warnings;

my $replace = shift || "George";
my $find = "Nobody";
$find = quotemeta $find;
while (my $line = <DATA>) {
      $line =~ s/$find/$replace/g;
      print $line;
   }

   __DATA__

   Nobody by Shel Silverstein

   Nobody loves me,

   Nobody cares,


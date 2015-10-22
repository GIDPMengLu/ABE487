#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
my $filename = shift @ARGV or die "Please provide a FASTA file.\n";
my $count = 1;
open my $fh, '<', $filename;
  while(<$fh>){
    chomp($_);
    if ($_ =~  m/^>/ ) {
        my $header = $_;
        $header =~ s/>//g;
        print "$count: $header\n";
        my $count = $count++;
        #print "$header\n";
    }
}
printf "Found %s sequence%s.\n", $count-1,$count-1==1?'':'s';


#!usr/bin/perl

use strict;
use warnings;

my $filename = shift @ARGV;
my $count = 1;
if(!defined($filename)){
print "Please provide a FASTA file\n";
}
else{
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
print "Found"," ", $count-1," ", "sequences\n"
}


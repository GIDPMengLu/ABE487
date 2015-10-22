#!usr/bin/perl

use strict;
use warnings;
use autodie;
my $file = shift @ARGV or die "Please provide a sequence or file\n";

open my $fh, '<', $file;

my @seq = ();

while(<$fh>){
chomp $_;
push @seq, $_;
}
my $seq = join('',@seq);
my $head = $seq;

while($seq =~/((A|G)AATT(C|T))/g){
 $head =~ s/(A|G)AATT(C|T)/$1^AATT$2/;
}

print $head,"\n";

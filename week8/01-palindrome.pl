#!usr/bin/perl
use strict;
use warnings;
use autodie;

my $name = shift or die "Please provide a word or phase.\n";
my $text = uc $name;
$text =~s/[^a-zA-Z0-9]//g;
if($text eq reverse($text)){
print "Yes\n";
}
else{
print "No\n";
}

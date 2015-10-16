#!usr/bin/env/perl
use strict;
use warnings;
use autodie;

my $filename = shift @ARGV || 'Perl_V.genesAndSeq.txt';
open my $fh, '<', $filename;
my %hash;
my ($key,$value);
my @seq;
while(my $line = <$fh>){
  chomp $line;
  if ($line =~ /^>/){
     my @H = split (//,$line);
     shift @H;
     $key = join ('',@H);
     @seq = ();
   }
   else{
     push @seq, $line;
     $value = join ('',@seq);
   }
   $hash{$key} = $value;
}

for $key (sort {length($hash{$a}) <=> length($hash{$b})} keys %hash){
  my $length = length ($hash{$key});
  print "$key: $length\n";
}


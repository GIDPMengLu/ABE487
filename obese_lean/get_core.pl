#!/usr/bin/env perl
use strict;
use warnings;
use autodie;
use Data::Dumper;
#my $dirname = shift @ARGV ; 
#$dirname =~ s/\/$//; 

#opendir(my $dh,$dirname) || die ("failed to opendir: $dirname") ; 
#my @file = grep { /^[^\.]/ && -f "$dirname/$_" } readdir($dh);
#closedir $dh ;
#foreach my $file (@file) {  
 #  next unless ($file =~ /\.uproc$/i) ; 
 #  open my $fh, '<', $file;
 #  while (my $line = <$fh>){
 #    chomp $line;
 #    my ($id, $match) = split /,/, $line;
 #    $file1{$id} = $match; 
 #  } 
 #  for my $id (sort { $file1{$b} <=> $file1{$a} } keys %file1){
 #    my $match = $file1{$id};
 #    if ($match < 50){
 #      last;
 #    }
 #    $sortfile1{$id} = $match;
 #    print %sortfile1,"\n";
 #  }
 #} 
my $file1 = shift @ARGV;
my $file2 = shift @ARGV;
my $file3 = shift @ARGV;
my $file4 = shift @ARGV;
open my $fh1, '<', $file1;
open my $fh2, '<', $file2;
open my $fh3, '<', $file3;
open my $fh4, '<', $file4;

my $out1 = 'core.txt';
open my $out_fh1, '>', $out1;

my %f1;
my %sortF1;

while (my $line1 = <$fh1>){
 chomp $line1;
 my ($id1, $match1) = split /,/, $line1;
 $f1{$id1} = $match1; 
} 

for my $id1 (sort { $f1{$b} <=> $f1{$a} } keys %f1){
 my $match1 = $f1{$id1};
 if ($match1 < 50){
   last;
 }
 $sortF1{$id1} = $match1;
}

##################################################
my %f2;
my %sortF2;

while (my $line2 = <$fh2>){
 chomp $line2;
 my ($id2, $match2) = split /,/, $line2;
 $f2{$id2} = $match2;
}

for my $id2 (sort { $f2{$b} <=> $f2{$a} } keys %f2){
 my $match2 = $f2{$id2};
 if ($match2 < 50){
   last;
 }
 $sortF2{$id2} = $match2;
}

################################
my %f3;
my %sortF3;

while (my $line3 = <$fh3>){
 chomp $line3;
 my ($id3, $match3) = split /,/, $line3;
 $f3{$id3} = $match3;
}

for my $id3 (sort { $f3{$b} <=> $f3{$a} } keys %f3){
 my $match3 = $f3{$id3};
 if ($match3 < 50){
   last;
 }
 $sortF3{$id3} = $match3;
}

###############################
my %f4;
my %sortF4;

while (my $line4 = <$fh4>){
 chomp $line4;
 my ($id4, $match4) = split /,/, $line4;
 $f4{$id4} = $match4;
}

for my $id4 (sort { $f4{$b} <=> $f4{$a} } keys %f4){
 my $match4 = $f4{$id4};
 if ($match4 < 50){
   last;
 }
 $sortF4{$id4} = $match4;
}

my %newfile;
for my $x ( keys %sortF1 ){
    if (exists  $sortF2{$x} 
        and  exists $sortF3{$x}
        and  exists $sortF4{$x}) 
     {
        $newfile{$x} = [$sortF1{$x}, $sortF2{$x}, $sortF3{$x}, $sortF4{$x}]
    }
   else {
      next;
   } 
}

print $out_fh1 "$_\n" for keys %newfile;

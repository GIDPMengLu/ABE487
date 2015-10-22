<<<<<<< HEAD
#!/usr/bin/env/perl
=======
#!/usr/bin/env perl
>>>>>>> 81826c2e44fea2d1af5ff7e35e8c7d4cb39cb339

use strict;
use warnings;
use autodie;
use Data::Dumper;
<<<<<<< HEAD
unless(@ARGV == 2){
die "Please provide two files.\n";
=======
unless ( @ARGV == 2 ) {
    die "Please provide two files.\n";
>>>>>>> 81826c2e44fea2d1af5ff7e35e8c7d4cb39cb339
}

my $filename1 = shift;
my $filename2 = shift;

open my $fh1, '<', $filename1;
my %File1;
<<<<<<< HEAD
while(my $line1 = <$fh1>){
 chomp ($line1);
 my @F1 = split /\s+/, $line1;
 for my $word1 (@F1){
   $word1 =~ s/[^A-Za-z0-9]//g;
   $File1{lc $word1} = 1;
 }
}
close($fh1)

open my $fh2, '<', $filename2;
my %File2;
while(my $line2 = <$fh2>){
 chomp ($line2);
 my @F2 = split /\s+/, $line2;
 for my $word2 (@F2){
   $word2 =~ s/[^A-Za-z0-9]//g;
   $File2{lc $word2} = 1;
 }
}
close($fh2)

my $num = 0;
for my $word1 (sort keys %File1){
  if (exists $File2{$word1}){
   $num++;
   print $word1, "\n";
 }
}

print "Found: ", $count, "words in common.\n";
=======
while ( my $line1 = <$fh1> ) {
    chomp($line1);
    my @F1 = split /\s+/, $line1;
    for my $word1 (@F1) {
        $word1 =~ s/[^A-Za-z0-9]//g;
        $File1{ lc $word1 } = 1;
    }
}
close($fh1);

open my $fh2, '<', $filename2;
my %File2;
while ( my $line2 = <$fh2> ) {
    chomp($line2);
    my @F2 = split /\s+/, $line2;
    for my $word2 (@F2) {
        $word2 =~ s/[^A-Za-z0-9]//g;
        $File2{ lc $word2 } = 1;
    }
}
close($fh2);

my $num = 0;
for my $word1 ( sort keys %File1 ) {
    if ( exists $File2{$word1} ) {
        $num++;
        print $word1, "\n";
    }
}

print "Found $num words in common.\n";

__END__

Very close, but I had to correct several syntax problems.

One point off.
>>>>>>> 81826c2e44fea2d1af5ff7e35e8c7d4cb39cb339

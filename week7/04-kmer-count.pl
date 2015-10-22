#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';

my $filename = $ARGV[0] or die "Please provide a sequence.\n";
my $seq;
if ( open my $fh, '<', $filename ) {
    $seq = <$fh>;
    if ( !defined $seq ) {
        die "Zero-length sequence.\n";
    }
}
else {
    $seq = "$filename";
}

my $k = $ARGV[1];
my $mer;

if ( length($seq) == 1 ) {
    # You have hard-coded values of "3" (mer size) and "2" (sequence length)
    # but this is not right -- the mer size could be 2 and the seq.
    # len 1.  You need to calculate the number of possible mers from the 
    # sequence and die if there are fewer than one.
    print "Cannot get any 3 mers from a sequence of length 2.\n";
}
else {
    if ( !defined $k ) {
        # NO!  default mer size is 3 -- read the instructions!
        $k   = 3; #length($seq);
        $mer = $seq;
    }
    my @kmers;
    my $length = length($seq);
    my $nmers  = $length - $k + 1;
    for ( my $i = 0 ; $i + $k <= $length ; $i++ ) {
        push @kmers, substr( $seq, $i, $k );
    }
    my %hash;
    for my $base (@kmers) {
        $hash{$base}++;
    }
    my @uni      = keys(%hash);
    my $unicount = scalar(@uni);
    my @value    = values(%hash);
    my $count    = 0;
    for ( my $j = 0 ; $j < scalar(@value) ; $j++ ) {
        my $knum = $value[$j];
        if ( $knum == 1 ) {
            $count++;
        }
    }
    printf "%-15s %10s\n", "Sequence length", $length;
    printf "%-15s %10s\n", "Mer size",        $k;
    printf "%-15s %10s\n", "Number of kmers", $nmers;
    printf "%-15s %10s\n", "Unique kmers",    $unicount;
    printf "%-15s %10s\n", "Num. simgletons", $count;
    if ( $nmers > 1 ) {
        say "Most abundant";
        my $numline = 0;

        for my $base ( 
            sort { $hash{$b} <=> $hash{$a} || $a cmp $b } 
            keys %hash 
        ) {
            my $num = $hash{$base};
            $numline++;
            if ( $num == 1 || $numline > 10 ) {
                last;
            }
            say "$base: $num";
        }
    }
}

__END__

Many syntax problems.  Please don't turn in work that won't compile!

I'm being very lenient with the grading because this was a very difficult 
problem and you got quite a bit of it right.  

Two points off.

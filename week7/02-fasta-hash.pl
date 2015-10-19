#!usr/bin/env/perl
use strict;
use warnings;
use autodie;

my $filename = shift @ARGV || 'Perl_V.genesAndSeq.txt';
open my $fh, '<', $filename;
my %hash;
my ( $key, $value );
my @seq;
while ( my $line = <$fh> ) {
    chomp $line;
    if ( $line =~ /^>/ ) {
        $key = substr( $line, 1 );

        #my @H = split (//,$line);
        #shift @H;
        #$key = join ('',@H);
        #@seq = ();
    }
    else {
        #push @seq, $line;
        #$value = join ('',@seq);

        $hash{$key} += length($line);
    }
    #$hash{$key} = $value;
}

#for $key ( sort { length( $hash{$a} ) <=> length( $hash{$b} ) } keys %hash ) {
for $key ( sort { $hash{$a} <=> $hash{$b} } keys %hash ) {
    #my $length = length( $hash{$key} );
    print "$key: $hash{$key}\n";
}

__END__

Your way works, but it's more effort to get the answer.

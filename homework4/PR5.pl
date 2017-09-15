#!/usr/bin/env perl

use strict;
use warnings;
use autodie;

my $in = 'Perl_III.nobody.txt';
open my $fh, '<', $in;
while (my $line = <$fh>) {
    print $line;
    chomp($line);
    my $index_nobody   = index($line, 'Nobody');
    my $index_somebody = index($line, 'Somebody');
    if ($index_somebody >= 0) {
        warn("somebody is here: $index_somebody\n");
    }
}

__END__

No global filehandles!

Please format your code.

l. 9: You "open" the file handle but then read from STDIN
by using "<>" when you should have put "<$fh>" (as I corrected).

l. 10: No need to "chomp"

Your program produces no output when run.  

You never print when "somebody" if found.  Note the instructions:

#5. Create a script that uses <> to read in the contents of the provided
#    text file, Perl_III.nobody.txt. Use the function index() to
#
#      a. find the first position of 'Nobody' on every line
#      b. find the first position of 'somebody' on every line
#
#    Use the warn() function to warn the user that 'somebody is here'

One point off.

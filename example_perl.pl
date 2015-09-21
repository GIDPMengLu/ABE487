#!usr/bin/perl
use strict;
use warnings;

my $turtials = (

'Michalengo' => 'orange',
'Donatello' => 'purple',
'Leonarf' => 'blue',
'SJDJ' => 'Red',
);
print join(',',sort keys $turtiles),"\n";
print join(',',sort values $turtiles),"\n";

my $ordinal = (
1 => 'first',
2 => 'second',
3 => 'third',
10 => 'tenth',
);

print join 

print join(',',sort { $a <=> $b  } keys $ordinal),"\n";




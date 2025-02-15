# TestModule.pm

package TestModule;

use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(add subtract multiply divide);

sub add{
    my ($a, $b) = @_;
    return $a + $b;
}

sub subtract{
    my ($a, $b) = @_;
    return $a - $b;
}

sub multiply{
    my ($a, $b) = @_;
    return $a * $b;
}

sub divide{
    my ($a, $b) = @_;
    return $b != 0 ? $a / $b : "You cannot divide by zero!";
}

1;

#!/usr/bin/env perl

use strict;
use warnings;


sub my_func {
    my ($val1, $val2) = @_;
    my $val3 = $val1 * $val2;
    return $val3;
}


sub my_func2 {
    my $result = my_func(10, 10);
    print $result . "\n";
};

my_func2();


sub get_avg {
    my $length = scalar(@_);
    my $sum = 0;

    foreach my $num(@_){
        $sum += $num
    };
    my $average = $sum / $length;
    return $average;
};

sub print_avg {
    my $result = get_avg(@_);
    print "The average is: " . $result;
};

print_avg(10, 20, 15, 30, 55);

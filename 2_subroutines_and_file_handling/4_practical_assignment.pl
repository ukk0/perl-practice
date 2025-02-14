#!/usr/bin/env perl

use strict;
use warnings;

# Create a Perl script that calculates the average value of numbers read from numbers.txt file.
# Store the result in average.txt file.

sub count_and_store_average{
    my $file_to_read = shift @_;
    my $file_to_write = shift @_;
    my $total = 0;
    my $line_count = 0;

    open (my $fh, "<", $file_to_read) or die "Could not find or open the file.";
    while (my $line = <$fh>){
        $total += $line;
        $line_count += 1;
        };

    my $result = $total / $line_count;
    close ($fh) or die "Could not close file.";
    open (my $fh2, ">", $file_to_write) or die "Could not find or open the file.";
    print $fh2 $result;
    close ($fh2) or die "Could not close file.";
};

count_and_store_average("numbers.txt", "average.txt");

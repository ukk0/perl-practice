#!/usr/bin/env perl

use strict;
use warnings;


# Create a subroutine which searches for a value from file.
# Make sure to include proper error handling techniques.

sub search_keyword{
    my ($filename, $keyword) = @_;

    open (my $fh, '<', $filename) or die "Could not open or find file '$filename': $1";
    while (my $line = <$fh>){
        if ($line =~ /($keyword)/){
            print $line;
        }
    }
    close ($fh) or die "Could not close file ''$filename: $1";
}

my $filename = "assignment.txt";
my $keyword = "test";

search_keyword($filename, $keyword);

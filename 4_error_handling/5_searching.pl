#!/usr/bin/env perl

use strict;
use warnings;

# Searching using Regex

sub search {
    my ($string, $keyword) = @_;

    while ($string =~ /($keyword)/g){
        print "A match was found: $1 \n";
    }
}

my $string = "This is a test string. The keyword is in fact 'keyword'. Let's see if it's found.";
my $keyword = "keyword";

search($string, $keyword);

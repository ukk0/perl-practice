#!/usr/bin/env perl

use strict;
use warnings;

# Hashes (%) are similar key-value pairs like dictionaries

my %my_hash = ("Bob" => 25, "Anna" => "22", "John" => 30);

print $my_hash{"Bob"};
print $my_hash{"Anna"};

my @array = @my_hash{"Bob", "John"};
print $array[-1];
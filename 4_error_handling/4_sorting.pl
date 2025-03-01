#!/usr/bin/env perl

use strict;
use warnings;


# By default sorted based on ASCII value (capitalized first, alphabetically)

my @fruits = ('Orange ', 'apple ', 'Lemon ', 'peAR ');

print sort @fruits;
print "\n";


# Using cmp operator:

my @x = sort {$a cmp $b} @fruits;  # Asc order using the cmp operator
my @y = sort {$b cmp $a} @fruits;  # Desc order using the cmp operator

print @x;
print "\n";
print @y;
print "\n";


# Normalizing values before comparison:

my @z = sort {lc($a) cmp lc($b)} @fruits;  # Change all values to lowercase for comparison
my @w = sort {uc($b) cmp uc($a)} @fruits;  # Change all values to uppercase for comparison

print @z;
print "\n";
print @w;
print "\n";


# Numbers sorting - if using plain 'sort' it will consider each value as a string.
# Use this instead:

my @nums = (10, 40, 3, 23, 55, 410, 12, 6);

my @i = sort { $a <=> $b } @nums;
print @i;
print "\n";

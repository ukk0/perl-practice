#!/usr/bin/env perl

use strict;
use warnings;

# Arrays (@) hold several units of data:
my @my_array = (1, 2, 3, 4, "five");

# Assigning array to scalar provides the lenght of the array
my $lenght = @my_array;

# Reassign array value
@my_array[1] = "two";

# Push (append) value to the end of the array
push @my_array, (6);
my $lenght2 = @my_array;

# Unshift value to the beginning of the array
unshift @my_array, ("ZERO");

# shift @array / pop @array = removes first / last value from the array

# Grab several values from array
my @mult_values = @my_array[1..3];

# Access values by index:
my $var1 = $my_array[0];
my $var2 = $my_array[-3];

print $var1 . "\n";
print $lenght . "\n";
print $lenght2 . "\n";
print $mult_values[0] . "\n";
print (($my_array[4] eq $var2 ? "True" : "False") . "\n");

# Replace several values from array
@my_array[2..4] = ("two", "three", "four");
print @my_array;

# Delete value by index
delete $my_array[0];

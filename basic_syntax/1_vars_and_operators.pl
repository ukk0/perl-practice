#!/usr/bin/env perl

use strict;
use warnings;

# This is a normal comment

=begin
This is a
multiline comment
....
=cut

# Scalar values ($) hold a single unit of data: strings, numbers or references.
my $name = "ukk0";
my $my_age = 33;
my $years_until_50 = (50 - $my_age);

my $num1 = 10;
my $num2 = 5;
my $str = "word";
my $string_num = "10";
my $string_num2 = "5 apples";


print "Hello $name\nYou are $my_age years old?\nThat means in $years_until_50 years you will be 50!\n";
print "Perl can also do this: " . ($num1 + $string_num) . "\n";
print "and also this: " . ($num2 + $string_num2) . "\n";  # but warns you about it.

# Basic operators
print $num1 + $num2 . "\n";
print $num1 - $num2 . "\n";
print $num1 / $num2 . "\n";
print $num1 * $num2 . "\n";
print $num1 ** $num2 . "\n";
print $num1 % $num2 . "\n";

print $name x 3 . "\n";

# Comparison operators - prints 1 if True, 0 if False
print ($num1 == $num2 ? "1" : "0");
print ($num1 != $num2 ? "1" : "0");
print ($num1 < $num2 ? "1" : "0");
print ($num1 > $num2 ? "1" : "0");

# String comparison operators
print ($name eq $str ? "1" : "0");
print ($name ne $str ? "1" : "0");
print ($name lt $str ? "1" : "0");
print ($name gt $str ? "1" : "0");

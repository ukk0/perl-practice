#!/usr/bin/env perl

use strict;
use warnings;


my @numbers = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
my $lenght = @numbers;
my @numbers2 = 11..20;


# FOR LOOP
for (my $num = 0; $num < $lenght; $num++){
    print "$numbers[$num] \n"
};
# Explanation: For value $num, which starts at 0, if $num is less than the length 
# of @numbers array, print $num index of @numbers and then increase $num by one.

for (my $num = 0; $num <= $#numbers2; $num++){
    print "$numbers2[$num] \n"
};
# Different way to get the lenght of array. #-sign checks the last index in the array.


# FOREACH LOOP
foreach my $num(@numbers){
    print $num * 10 . "\n"
};

# WHILE LOOP
my $num1 = 0;

while ($num1 < $lenght){
    print "$numbers[$num1] xxx \n";
    $num1++;
};


# DO WHILE LOOP
my $num2 = 0;

do{
    print "$numbers[$num2] yyy \n";
    $num2++;
}until($num2 > $#numbers);

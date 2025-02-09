#!/usr/bin/env perl

use strict;
use warnings;

my $num1 = 35;
my $num2 = 30;

my $name1 = "Bob";
my $name2 = "Bob";

if ($num1 == $num2){
    print "Numbers are equal. \n"
}elsif ($num1 > $num2){
    print "$num1 is larger than $num2. \n" 
}else {
    print "$num2 is larger than $num1. \n"
};

if ($name1 eq $name2){
    print "Name $name1 is equal to name $name2 as strings. \n"
}else {
    print "Names are not equal as strings. \n"
};
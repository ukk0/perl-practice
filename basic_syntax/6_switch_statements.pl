#!/usr/bin/env perl

use strict;
use warnings;

use feature 'switch';

my $fruit = "pear";

# !!! DEPRECATED FEATURE !!!

given($fruit){
    when("apple"){
        print "This is an apple. \n";
        # continue -> this would continue to run the 'loop' and check the other conditionals.
    }
    when("orange"){
    print "This is an orange. \n";
    }
    default{
        print "This is an unknown fruit. \n"
    }
}

# !!! DEPRECATED FEATURE !!!
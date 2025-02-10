#!/usr/bin/env perl

use strict;
use warnings;
use feature "signatures";

# Subroutines = functions
# Passing arguments to Perl subroutine: In an array '@_'


# Simple for cases with just single argument or quick inline use, but it can get messy fast.
# Doesn't explicitly declare expected arguments.
sub my_func {
    my $name = $_[0];
    print "Hello world! Hello $name! \n";
};

my_func("ukk0");


# shift removes and returns the first argument, making it easy to process arguments sequentially.
# Avoids direct indexing like $_[0], making the function easier to modify.
# Good for when arguments need to be processed dynamically (e.g., in loops).
sub my_func2{
    my $name = shift @_;
    my $name2 = shift @_;
    print "These are $name and $name2. \n";
};

my_func2("Bob", "John");


# Clean way to pass args without altering the @_:
sub my_func3{
    my ($name, $name2) = @_;
    print "$name and $name2 just met! \n";
};

my_func3("Bob", "John");


# Signatures-feature way to pass args:
sub my_func4 ($val1, $val2){
    my $val3 = $val1 + $val2;

    print "Sum of $val1 and $val2 is $val3! \n";
};

my_func4(10, 20);


# Using a default arg with signatures:
sub my_func5 ($name = "ukk0"){
    print "The default user is $name. \n";
};

my_func5();


# Another way of using default args with signatures:
sub my_func6 (%args){
    my $name = $args{name} // "ukk0";
    my $age = $args{age} // "30";
    print "The default user is $name. The age is $age. \n";
};

my_func6(age => 25);



sub my_func7 {
    my (%args) = @_;
    my $name = $args{name} // "Guest";
    my $age  = $args{age};
    
    print "User: $name, Age: $age \n";
}

my_func7(name => "ukk0", age => 33);


=begin
Situation	            Best Approach	            Why?

1-2 required args	    my ($arg1, $arg2) = @_	    Simple, fast, and clear
Many arguments (3+)	    my (%args) = @_;	        More readable, supports optional args
Some optional args	    my (%args) = @_;	        Lets you skip parameters
Modern Perl (>=5.20)	sub func($arg1, $arg2) {}	Cleaner syntax, better defaults
Maximum flexibility	    Hash arguments %args	    Best for future-proofing
=cut

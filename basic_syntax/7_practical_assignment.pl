#!/usr/bin/env perl

use strict;
use warnings;


=begin
Write Perl scripts to complete the following tasks:

1. Declare and initialize a scalar variable to store your name.
2. Declare and initialize an array with a list of days in a week.
3. Use a loop to iterate over the array and print each day.
4. Use a conditional statement inside the loop to print a special message for Monday.
5. (Additional) Make the loop run 3 times. 
=cut

my $my_name = "ukk0";
my @days_in_week = ("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday");

my $loops_run = 0;

while ($loops_run < 3){
    for (my $i = 0; $i <= $#days_in_week; $i++){
        if($days_in_week[$i] eq "Monday"){
            print "Monday again, $my_name... \n";
        }else{
            print $days_in_week[$i] . "\n";
        }
    }
    $loops_run++;
}
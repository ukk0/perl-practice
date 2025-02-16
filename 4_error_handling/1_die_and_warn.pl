#!/usr/bin/env perl

use strict;
use warnings;


# Errors can be classified as: 
# 1) Compilation time errors
# 2) Run time errors

# Error handling with die() and warn()
# Adding $! prints out the verbose error:

open (my $fh1, "<", "non_existent_file.txt") or warn "DEBUG: Failed to open the file! Error: $!";
print readline ($fh1);    # This will run.
print "Continue... \n";  # This will run.


open (my $fh2, "<", "non_existent_file.txt") or die "DEBUG: Failed to open the file! Error: $!";
print readline ($fh2);    # This will not run.
print "Continue... \n";  # This will not run.

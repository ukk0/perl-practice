#!/usr/bin/env perl

use strict;
use warnings;


# Read from file <
open (my $F, "<", "test.txt") or die "Could not open file, please check if exists.";
print readline ($F);
close ($F) or die "Could not close the file.";

# Write to file, overwrite existing, create new file if non-existent >
# Write to file, append to the end >>

open (my $F2, ">", "test2.txt");
print $F2 "This is text from the script. \n";
close ($F2);

open (my $F3, "+>>", "test2.txt");  # Read/write with the +
print $F3 "This is appending text to the eof.";

rename ("test2.txt", "test3.txt") or die "No such file exists.";

seek ($F3, 0, 0);  # Moves to the beginning of the file.
print readline ($F3);
close ($F3);

unlink ("test3.txt");  # Deletes the file from dir.

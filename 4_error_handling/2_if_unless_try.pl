#!/usr/bin/env perl

use strict;
# use warnings;     Not used here for debugging purposes.
use Try::Tiny;      # Error :try is deprecated.


# Other methods for handling errors:
# If-statements, unless-function, try-catch

my $filename = "non_existent_file.txt";
my $a = 5;
my $b = 0;

if ($b != 0){
    print "$a / $b = " . $a / $b . "\n";
}else{
    warn "DEBUG-IF: You cannot divide by zero." 
}
print "Continue... \n";


my $file = open (my $fh1, "<", $filename);
if(-e $file){
    print "File exists. \n"
}else{
    warn "DEBUG-IF: Cannot open the file. $! \n";
}
print "Continue... \n";


my $file2 = open (my $fh2, "<", $filename);
unless (-e $file2){warn "DEBUG-UNLESS: No such file exists. $! \n";}else{  # = Only continue with the function if experssion returns True.
    print "File exists! \n"
}


try {
    open(my $fh3, "<", $filename) or die "DEBUG-TRY: Cannot open file: $!";
    print "File exists! \n";
    close $fh3;
}
catch {
    warn "DEBUG-TRY: No such file exists. $_ \n";
};
print "Continue... \n";

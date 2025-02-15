#!/usr/bin/env perl

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin";
use AssignmentModule;

# Create a Perl module which takes input string from user and returns 
# email addresses which are inside the string, using regex.

my $string = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
For inquiries, contact support\@example.com. Curabitur quis eros sit amet 
est eleifend tincidunt. You can also reach out at hello.world42\@testmail.org 
for more details. Etiam nec lorem et justo tincidunt bibendum. If needed, drop 
an email to info\@loremsite.net and our team will assist you.";

my @emails = extract_emails($string);
foreach my $email(@emails){
    print $email . "\n";
};

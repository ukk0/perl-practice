# AssignmentModule.pm

package AssignmentModule;

use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(extract_emails);


sub extract_emails{
    my $string = shift @_;
    
    my @emails = $string =~ /[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}/g;
    return @emails;
}

# [a-zA-Z0-9._%+-]+     Matches all allowed characters for the local part of the email
# [a-zA-Z0-9.-]+        Matches the domain name (after @ but before .)
# \.[a-zA-Z]            Matches the top-level domain (.com, .org, .net, etc.)
# {2,}                  Ensures the top-level domain is at least 2 characters
# /g                    Finds all matches in the input string

1;
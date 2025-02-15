#!/usr/bin/env perl

use strict;
use warnings;

#  Comprehensive Perl Archive Network (CPAN)

# Install 'cpan' via terminal if not installed.
# Run 'cpan App::cpanminus'
# Search metacpan.org for modules
# Run 'cpanm JSON::XS'

use JSON::XS;


my $data = encode_json({
    name => "ukk0",
    age => 33,
    location => "CZ"
});

print $data;

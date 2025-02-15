#!/usr/bin/env perl

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin";
use TestModule;

# FindBin locates the directory where the script itself is located.
# "$FindBin::Bin" adds that directory to @INC, ensuring Perl looks for modules in the same directory as the script.

print my $sum = add(10, 25) . "\n";
print my $difference = subtract(25, 15) . "\n";
print my $product = multiply(10, 10) . "\n";
print my $quotient = divide(10, 0) . "\n";

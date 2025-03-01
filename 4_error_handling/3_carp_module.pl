#!/usr/bin/env perl

use strict;
use warnings;
use Carp qw(carp cluck croak confess);

# Error handling using the Carp module

# carp – Warns like warn, but reports from the caller's perspective.
# cluck – Like carp, but provides a full stack trace.
# croak – Dies like die, but reports from the caller's perspective.
# confess – Like croak, but provides a full stack trace.


sub test_carp {
    carp "This is a warning!";
}

sub test_cluck {
    cluck "This is a warning with stack trace!";
}

sub test_croak {
    croak "This is a fatal error!";
}

sub test_confess {
    confess "This is a fatal error with stack trace!";
}

test_carp();    # Issues a warning from the caller's perspective
test_cluck();   # Issues a warning with a stack trace
test_croak();   # Dies with an error message from the caller's perspective
test_confess(); # Dies with a stack trace

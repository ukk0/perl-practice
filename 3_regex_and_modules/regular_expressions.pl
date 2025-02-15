#!/usr/bin/env perl

use strict;
use warnings;


# Operators:
# =~ for positive
# !=~ for negative

# M-pattern
# Supported delimiters with m//
# / ... / (default)
# | ... |
# ! ... !
# # ... #
# { ... }
# @ ... @
# ~ ... ~

# You can use just // without m, but it's best used when pattern itself includes /, f.e.:
if ("path/to/file" =~ m|to|) {
    print "Match found!\n";
    }

# Without M-pattern
my $str = "Hello World";
if ($str =~ /World/) {
    print "Match found!\n";
}

# Metacharacter	    Meaning
# .	                Matches any character except newline
# ^	                Start of a string
# $	                End of a string
# \d	            Any digit (0-9)
# \w	            Any word character (a-z, A-Z, 0-9, _)
# \s	            Any whitespace (space, tab, newline)
# \b	            Word boundary
# \D, \W, \S	    Negations (e.g., \D = non-digit)

my $email = "john.doe\@example.com";
if ($email =~ /\w+@\w+\.\w+/) {
    print "Looks like an email address!\n";
}

my $name = "Alice";
if ($name =~ /^[A-Z][a-z]+$/) {
    print "Valid name!\n";
}

my $file = "report.txt";
if ($file =~ /\.txt$/) {
    print "It's a text file!\n";
}

my $text = "John is 25 years old.";
if ($text =~ /(\d+)/) {
    print "John's age is $1\n";
}

my $sentence = "Hello, world!";
while ($sentence =~ /(\w+)/g) {
    print "Found word: $1\n";
}

my $text2 = "I bought a car.";
if ($text2 =~ /\bcar\b/) {
    print "Found whole word 'car'!\n";
}

my $input = "Phone: 123-456-7890";
$input =~ s/\D//g;  
print "Numbers only: $input\n";

my $username = "john_doe@123!";
$username =~ s/\W//g;
print "Clean username: $username\n";

# Quantifier	    Meaning
# *	                0 or more times (ab* → "a", "ab", "abb"...)
# +	                1 or more times (ab+ → "ab", "abb"...)
# ?	                0 or 1 time (ab? → "a", "ab")
# {n}	            Exactly n times (a{3} → "aaa")
# {n,}	            At least n times (a{2,} → "aa", "aaa", ...)
# {n,m}	            Between n and m times (a{2,4} → "aa", "aaa", "aaaa")

if ("abc123" =~ /\d+/) { print "Contains numbers!\n"; }         # Matches "123"
if ("Hello" =~ /^H/) { print "Starts with H!\n"; }              # Matches "H"
if ("word1 word2" =~ /\bword\b/) { print "Exact match!\n"; }    # Matches "word"
if ("aaa" =~ /a{2,}/) { print "Two or more a's!\n"; }           # Matches "aaa"
if ("hello" =~ /l+/) { print "Matches consecutive l's!\n"; }    # Matches "ll"

# Use parentheses to group parts of regex and capture matches:
my $text3 = "John Doe, Age: 30";
if ($text3 =~ /(\w+) (\w+), Age: (\d+)/) {
    print "First name: $1\n";  # John
    print "Last name: $2\n";   # Doe
    print "Age: $3\n";         # 30
}

# Character Class	    Meaning
# [abc]	                Match a, b, or c
# [^abc]	            Match anything except a, b, c
# [a-z]	                Match any lowercase letter
# [A-Z]	                Match any uppercase letter
# [0-9]	                Match any digit

if ("X" =~ /[A-Z]/) { print "Uppercase letter found!\n"; }
if ("5" =~ /[^a-zA-Z]/) { print "Not a letter!\n"; }

# Lookahead (?=...)
# Ensures something follows without including it in the match.
if ("apple123" =~ /\w+(?=\d+)/) { print "Match found!\n"; } # Matches "apple"


# Lookbehind (?<=...)
# Ensures something precedes without including it.
if ("$500" =~ /(?<=\$)\d+/) { print "Matched number after $!\n"; } # Matches "500"

# Modifier	    Meaning
# i	            Case-insensitive (/hello/i matches "Hello")
# m	            Multiline (^ and $ match each line)
# s	            Dot (.) matches newline (/a.*b/s matches across lines)
# x         	Extended mode (allows spaces & comments)
# g	            Global match (find all occurrences)

if ("HELLO" =~ /hello/i) { print "Match case-insensitive!\n"; }

# Substitution (s///) Used for replacing text.
my $string = "The cat sat on the mat";
$string =~ s/cat/dog/;          # Replace "cat" with "dog"
print "$string\n";              # The dog sat on the mat

$str =~ s/\bmat\b/matress/g;    # Replace "mat" globally
print "$string\n";              # The dog sat on the matress

# To find all matches, use the g flag:
my $sentence2 = "apple banana apple orange";
while ($sentence2 =~ /apple/g) {
    print "Found";
}

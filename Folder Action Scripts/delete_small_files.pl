#!/usr/bin/perl

print `find $ARGV[0] -size -10M -type f -maxdepth 1 -print`;

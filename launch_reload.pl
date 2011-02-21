#!/usr/bin/perl

print `launchctl unload $ARGV[0]`;
print `launchctl load $ARGV[0]`;
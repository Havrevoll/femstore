#!/usr/bin/perl

use warnings;
use strict;

open (my $fh, '<', 'test2.txt') or die $!;

my 
while (<$fh>) {
  if (/[NEOAC][1-6]/) {
    

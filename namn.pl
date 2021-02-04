#!/usr/bin/perl

use warnings;
use strict;
use Storable;

my %namneliste = ();

open( my $fh, '<', "namn.txt") or die $!;

while(<$fh>) {
  chomp;
  if (/^(..?): (.*)$/) {
    print "Kva er det norske ordet for $2?\n";
    my $nor = <STDIN>;

    $namneliste{$1} = {eng => $2, nor => $nor};
  }
}

foreach my $key (keys %namneliste) {
  my $eng = $namneliste{$key}{eng};
  my $nor = $namneliste{$key}{nor};
  print "$key: $eng = $nor";
}

store(\%namneliste, "namneliste.nn");

close($fh);



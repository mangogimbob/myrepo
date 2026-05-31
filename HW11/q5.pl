#!/usr/bin/perl
use strict;
use warnings;

my %word_count;

while (my $word = <>) {
    chomp($word);
    next if $word =~ /^\s*$/;
    $word_count{$word}++;
}

foreach my $key (keys %word_count) {
    print "$key: $word_count{$key}\n";
}

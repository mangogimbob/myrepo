#!/usr/bin/perl
use strict;
use warnings;

my $count = 0;
my @col_sum;

my $header = <>;
chomp($header);
print "$header 총점 평균\n";

while (my $line = <>) {
    chomp($line);
    my @fields = split(/\s+/, $line);
    my $sum = 0;
    my $num_subjects = scalar(@fields) - 2;

    print "$fields[0] $fields[1] ";

    for (my $i = 2; $i < scalar(@fields); $i++) {
        print "$fields[$i] ";
        $sum += $fields[$i];
        $col_sum[$i] += $fields[$i];
    }
    
    my $avg = $sum / $num_subjects;
    printf "%d %.1f\n", $sum, $avg;
    $count++;
}


if ($count > 0) {
    print "            "; 
    for (my $i = 2; $i < scalar(@col_sum); $i++) {
        printf "%.1f ", $col_sum[$i] / $count;
    }
    print "\n";
}

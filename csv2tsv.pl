#!/usr/bin/perl
use strict;
use warnings;
use Text::CSV_XS;
my $csv = Text::CSV_XS->new ({ binary => 1, auto_diag => 1, sep_char=>' ' });
my $fh = *STDIN;
while (my $row = $csv->getline ($fh)) {
  print join("\t", @$row), "\n";
}
close $fh;

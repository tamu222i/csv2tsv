#!/usr/bin/perl
use Text::CSV_XS;

my $file = "/var/log/httpd/access_log";
my $csv = Text::CSV_XS->new ({ binary => 1, auto_diag => 1, sep_char=>' ' });
open my $fh, "<:encoding(utf8)", $file or die "$file: $!";
while (my $row = $csv->getline ($fh)) {
  print join("\t", @$row), "\n";
}
close $fh;

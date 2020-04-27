#!/usr/bin/perl
open F, "state.txt";
while (my $f = <F>) {
	chop $f;
	if ($f =~ /^\s+<option value="(.{2,2})">(.+?)<\/option>$/) {
		print "\"$1\": \"$2\",\n";
	} else {
		die("unexpected $f")
	}
}
close F;

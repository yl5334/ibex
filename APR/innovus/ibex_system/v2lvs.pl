#!/usr/bin/perl
use strict;
use warnings;

system ("v2lvs -i -v $ARGV[0].nophy.v -o $ARGV[0].cdl -s "YOUR sub-block .cdl files" -lsr "YOUR sub-block .cdl files");

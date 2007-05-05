#!perl -wT
# $Id: style_no_tabs.t 1825 2007-05-04 23:29:20Z claco $
use strict;
use warnings;

BEGIN {
    use Test::More;

    plan skip_all => 'set TEST_AUTHOR to enable this test' unless $ENV{TEST_AUTHOR};

    eval 'use Test::NoTabs 0.03';
    plan skip_all => 'Test::NoTabs 0.03 not installed' if $@;
};

all_perl_files_ok('lib');

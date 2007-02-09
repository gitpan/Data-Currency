#!perl -wT
# $Id: basic.t 1728 2007-02-09 03:42:12Z claco $
use strict;
use warnings;

BEGIN {
    use lib 't/lib';
    use Test::More tests => 1;

    use_ok('Data::Currency');
};

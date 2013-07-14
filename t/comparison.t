#!/usr/bin/env perl
use strict;
use warnings;
use Data::Currency;
use Test::More tests => 3;

{
    my $value1 = Data::Currency->new(1.2, 'USD');
    my $value2 = Data::Currency->new(1.2, 'USD');
    is $value1 <=> $value2, 0, '1.2 USD <=> 1.2 USD';
}

{
    my $value1 = Data::Currency->new(1.2, 'USD');
    my $value2 = Data::Currency->new(1.3, 'USD');
    is $value1 <=> $value2, -1, '1.2 USD <=> 1.3 USD';
}

{
    my $value1 = 1.4;
    my $value2 = Data::Currency->new(1.3, 'USD');
    is $value1 <=> $value2, 1, '1.4 <=> 1.3 USD';
}

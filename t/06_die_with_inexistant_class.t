use strict;
use warnings;
use Test::More tests => 2;
use Test::Exception;

BEGIN {
	package My::Factory;
	use MooseX::AbstractFactory;
	use Moose;
}

dies_ok {
	my $imp = My::Factory->create(
    	'FooBar', {}
	);
} "Factory->new() die";

like $@, qr/Can't locate My\/Factory\/FooBar.pm/;

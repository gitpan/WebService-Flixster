# $Id: Currency.pm 6400 2011-06-09 12:13:42Z chris $

package WebService::Flixster::Currency;

use strict;
use warnings;

our $VERSION = '0.01';

use base qw(Class::Accessor);

use Carp;
our @CARP_NOT = qw(WebService::Flixster WebService::Flixster::Movie);

use HTML::Entities;
use Math::Currency;

sub _new {
    my $class = shift;
    my $ws = shift;
    my $amount = shift;
    my $currencySymbol = shift;

    if ($amount eq "") { return undef; }

    my $self = Math::Currency->new($amount);
    $self->format('CURRENCY_SYMBOL',decode_entities($currencySymbol));

    return $self;
}

1;

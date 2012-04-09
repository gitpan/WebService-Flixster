# $Id: URL.pm 7358 2012-04-09 00:25:17Z chris $

=head1 NAME

WebService::Flixster::URL

=cut


package WebService::Flixster::URL;

use strict;
use warnings;

our $VERSION = '0.01';

use base qw(Class::Accessor);

use Carp;
our @CARP_NOT = qw(WebService::Flixster WebService::Flixster::Movie);

__PACKAGE__->mk_accessors(qw(
    type
    url
));


sub _new {
    my $class = shift;
    my $ws = shift;
    my $data = shift;

    my $self = {};

    bless $self, $class;

    $self->type($data->{'type'});
    $self->url($data->{'url'});

    return $self;
}

1;

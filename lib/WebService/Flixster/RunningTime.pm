# $Id: RunningTime.pm 6048 2011-01-30 21:54:05Z chris $

package WebService::Flixster::RunningTime;

use strict;
use warnings;

our $VERSION = '0.01';

use Carp;
our @CARP_NOT = qw(WebService::Movie WebService::Flixster::Movie);

use DateTime::Format::Duration;


sub _new {
    my $class = shift;
    my $ws = shift;
    my $data = shift;

    return DateTime::Format::Duration->new('pattern' => "%H hr. %M min.")->parse_duration($data);

}

1;

package Net::OAuth::LP::Person;

use Modern::Perl '2013';
use autodie;
use namespace::autoclean;
use Moose;
use MooseX::StrictConstructor;
use MooseX::Privacy;
use Net::OAuth::LP::Client;
use Data::Dumper;

extends 'Net::OAuth::LP::Client';

has 'details' => (
    traits => ['Hash'],
    is     => 'rw',
    isa    => 'HashRef',
);

###########################################################################
# Public methods
###########################################################################
sub info {
  my ($self, $name) = @_;
  $self->details($self->get('~'.$name));
}

=head1 NAME

Net::OAuth::LP::Person - Launchpad.net Person Entity

=head1 SYNOPSIS

Person representation

    my $person = Net::OAuth::LP::Person->new(person => $person_resource);

=head1 METHODS

    Nothing public but the accessors.

=cut

__PACKAGE__->meta->make_immutable;
1;    # End of Net::OAuth::LP::Person

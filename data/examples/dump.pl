#!/usr/bin/env perl
#
# for quick tests only, should not be depended upon for
# proper examples of current api.

use strict;
use warnings;
use v5.10;
use FindBin;
use lib "$FindBin::Bin/../../lib";
use Net::OAuth::LP::Models::Person;
use Net::OAuth::LP::Models::Bug;
use Data::Dump qw(pp);
use File::Spec::Functions;
use JSON;

pp(JSON->backend);
my $p = Net::OAuth::LP::Models::Bug->new;
$p->staging(1);
$p->find('859600');
pp(JSON::is_bool($p->can_expire));



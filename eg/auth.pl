#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../../lib";
use Net::OAuth::LP;
use Data::Dump qw(pp);
use File::Spec::Functions;

my $client = Net::OAuth::LP->new(consumer_key => 'fwapfwap');

$client->staging(1);
$client->login_with_creds;

pp $client;

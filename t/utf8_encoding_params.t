use strict;
use warnings;
use Test::More tests => 1;
use Test::Exception;
use Net::Stripe::Simple;

lives_ok {
    Net::Stripe::Simple::_encode_params({
        funky_quote => "\x{02BB}",
    });
} 'No issues with UTF-8 characters';

done_testing();

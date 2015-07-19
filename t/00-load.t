#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'EsaMattiTastula::FirstModule' ) || print "Bail out!\n";
}

diag( "Testing EsaMattiTastula::FirstModule $EsaMattiTastula::FirstModule::VERSION, Perl $], $^X" );

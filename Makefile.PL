use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'EsaMattiTastula::FirstModule',
    AUTHOR           => q{Esa-Matti Tastula <tastulae@mail.usf.edu>},
    VERSION_FROM     => 'lib/EsaMattiTastula/FirstModule.pm',
    ABSTRACT_FROM    => 'lib/EsaMattiTastula/FirstModule.pm',
    LICENSE          => 'artistic_2',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'EsaMattiTastula-FirstModule-*' },
);

use strict;
use warnings;
use ExtUtils::MakeMaker;
use v5.10;

WriteMakefile(
    NAME                => 'Vimpl',
    AUTHOR              => q{Colin Kennedy <moshen@cpan.org>},
    VERSION_FROM        => 'bin/vimpl',
    ABSTRACT_FROM       => 'bin/vimpl',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    EXE_FILES           => [ 'bin/vimpl' ],
    PREREQ_PM => {
        'Test::More' => 0,
        'Web::Scraper' => 0,
        'LWP::UserAgent' => 0,
        'Data::Dumper' => 0,
        'JSON::XS' => 0,
        'File::Path' => 0,
        'File::Copy' => 0,
        'Config::IniFiles' => 0,
        'MIME::Base64' => 0,
        'Pod::Usage' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Vimpl-*' },
);

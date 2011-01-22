#!perl -T

use Test::More tests => 1;

BEGIN {
    ok( $^O !~ /Win32/i , "OS isn't Windows") or BAIL_OUT("Right now this only works on Unix-like oses");
}

$ENV{'PATH'} = '/bin:/usr/bin:/usr/local/bin';
delete @ENV{'IFS', 'CDPATH', 'ENV', 'BASH_ENV'};

unless( `which git` ){
	diag( "Warning: git not found in " . $ENV{PATH} . " , this script requires git to function." );
}


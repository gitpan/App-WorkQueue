
######################################################################
## File: $Id: Makefile.PL 10844 2008-02-27 03:07:48Z spadkins $
######################################################################

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

%opts = (
    'NAME'         => 'App-WorkQueue',
    'DISTNAME'     => 'App-WorkQueue',
    'VERSION'      => '0.966',
    'PREREQ_PM'    => {
        "App::Context"    => 0,  # App service framework
        "App::Repository" => 0,  # Repository support (databases)
    },
    'dist'         => {'COMPRESS'=>'gzip -9f', 'SUFFIX' => 'gz',
                       'ZIP'=>'/usr/bin/zip', 'ZIPFLAGS'=>'-rl'},
);

WriteMakefile(%opts);


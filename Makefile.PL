#!/usr/bin/perl
# $Id: Makefile.PL 7360 2012-04-09 00:29:01Z chris $

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME            => 'WebService::Flixster',
    VERSION_FROM    => 'lib/WebService/Flixster.pm', 
    ABSTRACT_FROM   => 'lib/WebService/Flixster.pm', 
    AUTHOR          => 'Christopher Key <christopher.key@cantab.net>', 
    LICENSE         => 'perl', 
    PREREQ_PM       => {
	'Class::Accessor' => 0, 
	'Cache::FileCache' => 0, 
	'DateTime::Incomplete' => 0, 
	'File::Spec::Functions' => 0, 
	'HTML::Entities' => 0,
	'JSON' => 0, 
	'LWP::UserAgent' => 0, 
	'Math::Currency' => 0, 
	'URI' => 0, 
    }, 
    );

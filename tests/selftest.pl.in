#!/usr/bin/perl -w

#  Selftest for The XML Translation Tools 
#
#  Copyright (C) 2000 Free Software Foundation.
#
#  This library is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This script is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#  General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this library; if not, write to the Free Software
#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#
#  Author(s): Kenneth Christiansen

## Release information
my $PROGRAM  = "selftest";
my $VERSION  = "0.1";
my $result;
my $case;

## Loaded modules
use strict;

## Always print as the first thing
$| = 1;

sub check_result($)
{
    my $testcase = $_[0];
    my $result =`diff results/$testcase.h cases/$testcase.h`;
    
    if (!$result) { 
	print "[OK]\n"; ## diff was empty, ie. files were equal
    } else { 
	print "[FAILED]\n"; 
    }
}

sub check_result_output($)
{
    my $testcase = $_[0];
    $testcase =~ s/\.in//;
    my $result =`diff results/$testcase cases/$testcase`;

    if (!$result) {
        print "[OK]\n"; ## diff was empty, ie. files were equal
    } else {
        print "[FAILED]\n";
        open OUT, ">>errors";
        print OUT $result;
        close OUT;
    }
}


## SELFTESTS

## Welcome notice

print "Running selftest of the xml-i18n-tools module...\n\n";


## 1. Extract/Simple desktop file

print "1. Checking output from simple desktop file:                  ";

$case = "extract1.desktop";
`xml-i18n-extract --type=gettext/ini --quiet --update cases/$case`;
check_result($case);

## 2. Extract/Simple desktop-like file

print "2. Checking output from simple desktop-like file:             ";

$case = "extract2.keyprop";
`xml-i18n-extract --type=gettext/ini --quiet --update cases/$case`;
check_result($case);

## 3. Extract/Simple desktop-like file

print "3. Checking output from simple xml-file:                      ";

$case = "merge1.xml";
`~/share/xml-i18n-tools/xml-i18n-merge -o cases/ cases/$case.in cases/$case`;
check_result_output($case);


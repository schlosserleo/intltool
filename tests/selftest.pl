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

## Loaded modules
use strict;

## Always print as the first thing
$| = 1;

###############
## SELFTESTS ##
###############

## Welcome notice

print "Running selftest of the xml-i18n-tools module...\n\n";


## 1. Extract/Simple desktop file

print "1. Checking output from simple desktop file:                  ";

system("xml-i18n-extract", "--type=gettext/ini", 
       "--quiet", "--update", "cases/extract1.desktop");
$result=`diff results/extract1.desktop.h cases/extract1.desktop.h`;
if (!$result) { print "[OK]\n"; } else { print "[FAILED]\n"; }

## 2. Extract/Simple desktop-like file

print "1. Checking output from simple desktop-like file:             ";

system("xml-i18n-extract", "--type=gettext/ini",
       "--quiet", "--update", "cases/extract2.keyprop");
$result=`diff results/extract2.keyprop.h cases/extract2.keyprop.h`;
if (!$result) { print "[OK]\n"; } else { print "[FAILED]\n"; }

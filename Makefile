#
# CDDL HEADER START
#
# The contents of this file are subject to the terms of the
# Common Development and Distribution License (the "License").
# You may not use this file except in compliance with the License.
#
# You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
# or http://www.opensolaris.org/os/licensing.
# See the License for the specific language governing permissions
# and limitations under the License.
#
# When distributing Covered Code, include this CDDL HEADER in each
# file and include the License file at usr/src/OPENSOLARIS.LICENSE.
# If applicable, add the following below this CDDL HEADER, with the
# fields enclosed by brackets "[]" replaced with your own identifying
# information: Portions Copyright [yyyy] [name of copyright owner]
#
# CDDL HEADER END
#
# Copyright 2021 Stephen Hahn.  All rights reserved.
# Use is subject to license terms.
#

GROPS = grops
TROFF = troff

CPPFLAGS = -D_XOPEN_SOURCE=500
CPARSEFLAGS = -Werror
COPTFLAGS = -O2

CFLAGS = $(CPPFLAGS) $(CPARSEFLAGS) $(COPTFLAGS)

all: findunref

docs: findunref.1onbld.ps

findunref: findunref.c
	$(CC) $(CFLAGS) $< -o $@

findunref.1onbld.ps: findunref.1onbld
	$(TROFF) -man $< | $(GROPS) > $@

clobber:
	$(RM) -f findunref findunref.1onbld.ps

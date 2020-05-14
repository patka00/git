#!/bin/sh
#
# Copyright (c) 2020 Google LLC
#

test_description='cross-check reftable with files, using GIT_DEBUG_REFS output'

. ./test-lib.sh

test_expect_success 'GIT_DEBUG_REFS' '
	git init --ref-storage=files files &&
	git init --ref-storage=reftable reftable &&
	(cd files && GIT_DEBUG_REFS=1 test_commit message file) > files.txt &&
	(cd reftable && GIT_DEBUG_REFS=1 test_commit message file) > reftable.txt &&
	test_cmp files.txt reftable.txt
'

test_done

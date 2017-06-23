#! /bin/bash

branch=$1
buildno=$2
arch=$3

urlencode() {
    echo $(python3 -c 'import sys, urllib.parse; print(urllib.parse.quote(sys.argv[1], safe=""))' $1)
}

flavor=${branch%%/*}
enc_branch=$(urlencode $branch)
encenc_branch=$(urlencode $enc_branch)

buildpath="/job/kernel-build/job/$encenc_branch/"

set -o posix; set

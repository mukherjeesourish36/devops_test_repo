#!/bin/bash

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%M-%H')

zip -r "$dest/sunny-$timestamp.zip" $src > /dev/null

aws s3 sync "$dest" s3://aws-bash-backup 

echo "backup done and dusted"

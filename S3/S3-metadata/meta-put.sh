#! /usr/bin/env bash 

echo "== create bucket"

bucketname="metadata-testing-for-s3"

aws s3api put-object --bucket $bucketname --key sample.txt --body sample.txt --metadata file=text
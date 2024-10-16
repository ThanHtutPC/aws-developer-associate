#! /usr/bin/env bash 

echo "== put-object bucket"

bucketname="metadata-testing-for-s3"

aws s3api put-object --bucket $bucketname --key example.txt --body example.txt

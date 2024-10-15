#! /usr/bin/env bash

echo "== verify file in bucket"

bucketname="checksum-testing-for-s3" 

aws s3api list-objects --bucket $bucketname --query 'Contents[].Key'
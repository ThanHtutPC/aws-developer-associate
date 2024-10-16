#! /usr/bin/env bash

echo "== checksum bucket"

bucketname="checksum-testing-for-s3" 

aws s3api head-object --bucket $bucketname --key sample.txt --query ETag 

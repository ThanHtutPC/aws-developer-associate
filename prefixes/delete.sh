#! /usr/bin/env bash

echo "== delete bucket"

bucketname="checksum-testing-for-s3" 

aws s3 rm s3://$bucketname --recursive
aws s3 rb s3://$bucketname
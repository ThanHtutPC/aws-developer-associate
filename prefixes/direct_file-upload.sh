#! /usr/bin/env bash

echo "== file upload bucket"

bucketname="checksum-testing-for-s3" 

echo "This is the example file for prefix testing" | aws s3 cp - s3://$bucketname/myfolder/example.txt
#! /usr/bin/env bash

echo "== uplod file to bucket"

bucketname="checksum-testing-for-s3" 

aws s3 cp sample.txt s3://$bucketname/sample.txt
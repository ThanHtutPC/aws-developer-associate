#! /usr/bin/env bash

echo "== create bucket"

bucketname="checksum-testing-for-s3" 

aws s3api create-bucket --bucket $bucketname --region us-east-1

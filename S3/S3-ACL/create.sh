#!/usr/bin/env bash

echo "== create bucket" 

bucket="acl-testing-for-s3"

aws s3api create-bucket --bucket $bucket --region ap-southeast-1 --create-bucket-configuration LocationConstraint=ap-southeast-1

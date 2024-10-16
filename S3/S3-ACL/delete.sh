#!/usr/bin/env bash

echo "==delete bucket" 

bucket="acl-testing-for-s3"

aws s3 rm s3://$bucket --recursive
aws s3 rb s3://$bucket
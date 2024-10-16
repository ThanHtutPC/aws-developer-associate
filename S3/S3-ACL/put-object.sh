#!/usr/bin/env bash

echo "== put-object bucket" 

bucket="acl-testing-for-s3"

aws s3api put-object --bucket $bucket --key hello.txt --body hello.txt

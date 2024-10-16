#!/usr/bin/env bash

echo "== acl bucket" 

bucket="acl-testing-for-s3"

aws s3api put-object-acl --bucket $bucket --key hello.txt --acl public-read
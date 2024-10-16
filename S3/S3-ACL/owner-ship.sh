#!/usr/bin/env bash

echo "== ownership bucket" 

bucket="acl-testing-for-s3"

aws s3api put-bucket-ownership-controls \
    --bucket $bucket --ownership-controls file://ownership-control.json

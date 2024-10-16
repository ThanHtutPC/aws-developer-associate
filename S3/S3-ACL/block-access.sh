#!/usr/bin/env bash

echo "== block public polciy bucket" 

bucket="acl-testing-for-s3"

aws s3api put-public-access-block \
    --bucket $bucket \
    --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true"
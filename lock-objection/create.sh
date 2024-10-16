#! /usr/bin/env bash 

echo "== create bucket"

bucketname="storage-testing-for-s3"

aws s3api put-object-lock-configuration \
    --bucket $bucketname --object-lock-configuration '{ "ObjectLockEnabled": "Enabled", "Rule": { "DefaultRetention": { "Mode": "COMPLIANCE", "Days": 1 }}}'
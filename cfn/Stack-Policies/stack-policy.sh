#! /usr/bin/env bash

echo "== run stack policy"

stackname="EC2Create"

# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html

aws cloudformation set-stack-policy \
    --stack-name $stackname \
    --stack-policy-body file://stack-policy.json

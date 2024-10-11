#! /usr/bin/env bash 

echo "== create the s3"

stackname="creates3"

aws cloudformation deploy --template-file template3.yaml --stack-name $stackname --no-execute-changeset --capabilities CAPABILITY_NAMED_IAM

#! /usr/bin/env bash

echo "== update ec2"

stackname="EC2Create"

aws cloudformation deploy --template-file update-template.yaml --capabilities CAPABILITY_NAMED_IAM --stack-name $stackname 
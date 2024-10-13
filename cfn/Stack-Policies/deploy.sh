#! /usr/bin/env bash

echo "== create the ec2"

stackname="EC2Create"

aws cloudformation deploy --template-file template.yaml --capabilities CAPABILITY_NAMED_IAM --stack-name $stackname 
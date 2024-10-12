#!/usr/bin/env bash 
 
echo "== run nested-stack" 

stackname="nested-stack"

aws cloudformation deploy --template-file run-nested.yaml --stack-name $stackname --no-execute-changeset --capabilities CAPABILITY_NAMED_IAM
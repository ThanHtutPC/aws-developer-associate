#! /usr/bin/env bash

echo "== delete cfn and s3"

buckname="nested-statck-13337"
stackname="nested-stack"

aws cloudformation delete-stack --stack-name $stackname 

aws s3 rm s3://$buckname/* --recursive

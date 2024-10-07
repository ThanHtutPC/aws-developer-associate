#! /bin/bash

echo "== deploy sns basic"

STACK_NAME="sns-basic" 

aws cloudformation deploy \
  --template-file template.yml \
  --stack-name $STACK_NAME \
  --capabilities CAPABILITY_NAMED_IAM \
  --region us-east-1

aws sns publish --topic-arn arn:aws:sns:us-east-1:067120797866:MyLambdaSNSTopic --message "Hello, SNS!"

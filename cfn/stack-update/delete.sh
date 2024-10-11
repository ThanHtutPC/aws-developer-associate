#! /usr/bin/env bash

echo "== delete the stack"

stackname="creates3"

aws cloudformation delete-stack --stack-name $stackname
#!/usr/bin/env bash

echo "== Create the policy"

Policyname="my-policy"

## Run the first this command "aws iam list-policies --query 'Policies[*].[PolicyName, Arn]' --output text | grep $Policyname"
aws iam attach-user-policy --policy-arn arn:aws:iam::067120797866:policy/S3listAndGetObject --user-name user1
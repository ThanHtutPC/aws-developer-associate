#! /usr/bin/env bash

echo "== update policy"

## Run the first this command "aws iam list-policies --query 'Policies[*].[PolicyName, Arn]' --output text | grep $Policyname"

aws iam create-policy-version \
--policy-arn arn:aws:iam::067120797866:policy/my-policy \
--policy-document "$(cat policy.yaml | yq e -j)" --set-as-default
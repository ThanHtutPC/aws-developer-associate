#!/usr/bin/env bash

echo "== Create the policy"

Policyname="my-policy"

aws iam create-policy \
    --policy-name $Policyname\
    --policy-document "$(cat policy.yaml | yq e -j)" \
    --description "This policy grants access to all Put, Get, and List actions for my-bucket"
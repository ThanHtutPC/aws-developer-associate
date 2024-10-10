#! /usr/bin/env  bash 

echo "== delete policy"

aws iam delete-policy \
    --policy-arn arn:aws:iam::067120797866:policy/EC2CustomPolicy
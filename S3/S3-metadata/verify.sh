#!/bin/bash

bucketname="metadata-testing-for-s3"
OBJECT_KEYS=("example.txt" "sample.txt")  # Add more keys as needed

for KEY in "${OBJECT_KEYS[@]}"; do
  aws s3api head-object --bucket "$bucketname" --key "$KEY"
done

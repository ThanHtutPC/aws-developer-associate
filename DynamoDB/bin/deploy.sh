#! /bin/bash

STACK_NAME="SimpleDB"


echo "== Create the Simple DynmoDB"

sam deploy \
--stack-name $STACK_NAME \
--template-file ../template.yaml \
--capabilities CAPABILITY_NAMED_IAM \
#--guided
STACK_NAME="sns-basic"

echo "== delete the $STACK_NAME"

## delete the all service from Stack $STACK_NAME 
aws cloudformation delete-stack --stack-name $STACK_NAME 
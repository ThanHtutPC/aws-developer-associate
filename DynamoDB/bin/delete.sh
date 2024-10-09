echo "== delete stack $STACK_NAME"

STACK_NAME="SimpleDB"

sam delete \
--stack-name $STACK_NAME 
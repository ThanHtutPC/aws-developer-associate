# Install the SAM CLI file 

```md
https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/install-sam-cli.html
```

# batch-write-item 
aws dynamodb batch-write-item --request-items file://items.json

# get-item
aws dynamodb get-item --table-name my-table --key file://key.json

# update-item

aws dynamodb update-item \
    --table-name my-table \
    --key file://key.json \
    --update-expression "SET age = :newAge" \
    --expression-attribute-values '{":newAge": {"N": "30"}}'
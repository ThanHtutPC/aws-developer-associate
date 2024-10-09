#! /bin/bash

table_name="my-table"

echo "== add the item in db"

aws dynamodb put-item \
    --table-name my-table \
    --item '{
        "id": {"S": "123"},
        "name": {"S": "John Doe"},
        "age": {"N": "30"}
    }'

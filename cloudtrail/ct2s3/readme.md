# Create the s3 bucket

```md
aws s3 mb s3://mybucket
```

# Create the cloudtrail

```md
aws cloudtrail create-trail --name Trail1 --s3-bucket-name cloudtraillogsins3 --is-multi-region-trail
```

# Create the cloudwatch

```md 
aws logs create-log-group --log-group-name cloudtraillogs
```

aws dynamodb create-table \
    --table-name MusicCollection \
    --attribute-definitions AttributeName=Artist,AttributeType=S AttributeName=SongTitle,AttributeType=S \
    --key-schema AttributeName=Artist,KeyType=HASH AttributeName=SongTitle,KeyType=RANGE \
    --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5 \
    --tags Key=Owner,Value=blueTeam
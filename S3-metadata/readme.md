1. create s3 bucket (run create.sh)

2. put-object to s3 bucket (put-output.sh)
```md
<verify>
aws s3api head-object --bucket $bucketname --key example.txt
```
3. put-obejct with metadata (meta-put.sh) 
```
<verify>
aws s3api head-object --bucket $bucketname --key sample.txt
```

4. run the verify file for difference between this two file

```md
**will be see metadata difference**
```

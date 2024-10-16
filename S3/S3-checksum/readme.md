1. Create the checksum (Run the create-bk.sh)

2. prepare for file upload
    1. Create the upload file 
```md 
echo "This is a sample file for checksum testing." > sample.txt
```

    2. verify the sample file
```md 
md5sum sample.txt
``` 

3. upload the file to s3 (Run the upload-bk.sh)
```md 
aws s3 cp sample.txt s3://<bucketname>/sample.txt
```

4. Verify Checksum After Upload (run checksum.sh)
```md 
aws s3api head-object --bucket <bucketname> --key sample.txt --query ETag
```

5. re-run 2.2 verify
```md 
s3 result and md5sum result will be same
```
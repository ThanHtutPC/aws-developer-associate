1. Create an S3 bucket (create.sh)
```sh
aws s3 mb s3://bucketpolicy-testing-for-s3 --region ap-southeast-1
``` 

2. block bucket policy disable
```sh
aws s3api put-public-access-block --bucket my-bucket --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

3. set up a s3 bucket policy 
```sh
aws s3api put-bucket-policy --bucket MyBucket --policy file://policy.json
```

4. put object for bucket policy 
```sh 
aws s3 cp hello.txt s3://Mybucket
```

5. call the api from web broswer 
```sh 
https://Mybucket.s3.region.amazonaws.com
```

6. Enabled for host-website 
```sh 
aws s3api put-bucket-website --bucket MyBucket --website-configuration file://website.json
```

7. delete bucket and object 
```sh 
aws s3 rm s3://MyBucket --recursive 
aws s3 rb s3://MyBucket
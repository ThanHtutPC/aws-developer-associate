1. Create an s3 bucket 
```sh 
aws s3 mb s3://<mybucket>
```

2. put-bucket policy for s3
    1.  disable for public access setting
    ```sh
    aws s3api put-public-access-block \
    --bucket my-bucket \
    --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
    ```
    2. bucket policy for host-website
    ```sh 
    aws s3api put-bucket-policy --bucket <mybucket> --policy file://policy.json
    ```

3. Enabled for static host website 
```sh 
aws s3api put-bucket-website --bucket <mybucket> --website-configuration file://website.json
```
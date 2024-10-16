1. Create bucket (create.sh)
```md
{
    "Location": "http://versioning-testing-for-s3.s3.amazonaws.com/"
}
```

2. run this command 
```sh 
echo "This is versioning testing for s3" > hello.txt
```

3. put-object file to S3 bucket
```sh
aws s3 cp hello.txt s3://versioning-testing-for-s3
```

4. verify the versionid for hello.txt. And run the following command. 
```sh
aws s3api list-object-versions --bucket versioning-testing-for-s3 --prefix hello.txt --query Versions[].VersionId
```
### Result for versionid. I'm not enabled for versioning control.
```md
[
    "null"
]
``` 

5. Versioning Enabled 
```sh 
aws s3api put-bucket-versioning --bucket versioning-testing-for-s3 --versioning-configuration Status=Enabled
```
### re-verify hello.txt for version
```sh 
aws s3api list-object-versions --bucket versioning-testing-for-s3 --prefix hello.txt --query Versions[].VersionId
```

6. modify the hello.txt 
```sh 
echo "Hello htut" > hello.txt
aws s3 cp hello.txt s3://versioning-testing-for-s3/
```
### try again verify state
```sh 
aws s3api list-object-versions --bucket versioning-testing-for-s3 --prefix hello.txt --query Versions[].VersionId --output table
```
### This is out result for versionID 
```md 
|         ListObjectVersions         |
+------------------------------------+
|  IS4bTSFx7YyHyb2zRyat4Nw.flYzPvIK  |
|  null                              |
+------------------------------------+
```

7. delete the hello.txt from S3 bucket 
```sh 
aws s3 rm hello.txt s3://versioning-testing-for-s3/hello.txt
```
```
"DeleteMarkers": [
    {
        "Owner": {
            "DisplayName": "thanhtut.ln2020",
            "ID": "8bee6b9c36908da9af796e91cb4ee6eb685dd8c1a98c5fac985c3a117af603cc"
        },
        "Key": "hello.txt",
        "VersionId": "CRDtfnA8yspDGj7hudWl97M3B6Ai1HjI",
        "IsLatest": true,
        "LastModified": "2024-10-17T04:33:59.000Z"
```

## delete the file and remove s3 bucket 
```sh
aws s3 rm s3://versioning-testing-for-s3/ --recursive 
```
### Run this following command for removing version control
```sh 
aws s3api delete-objects --bucket versioning-testing-for-s3 --delete "$(aws s3api list-object-versions --bucket versioning-testing-for-s3 --query='{Objects: Versions[].{Key:Key,VersionId:VersionId}}')"
aws s3api delete-objects --bucket versioning-testing-for-s3 --delete "$(aws s3api list-object-versions --bucket versioning-testing-for-s3 --query='{Objects: DeleteMarkers[].{Key:Key,VersionId:VersionId}}')"
```
```sh
aws s3 rb s3://versioning-testing-for-s3
```

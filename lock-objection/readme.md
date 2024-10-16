# S3 Governance Mode with CLI
## important 
```
aws s3api put-bucket-versioning \
    --bucket governance-mode-lab-bucket \
    --versioning-configuration Status=Enabled
```

1. Create the file for governance mode 
```sh
aws s3api put-bucket-object-lock-configuration --bucket <bucket-name> --object-lock-configuration '{"ObjectLockEnabled": true, "DefaultRetention": {"Mode": "GOVERNANCE"}}'
```

2. Enable default lock objection
```sh
aws s3api put-object-lock-configuration \
    --bucket <bucketname> \
    --object-lock-configuration \
    "ObjectLockEnabled=Enabled,Rule={DefaultRetention={Mode=GOVERNANCE,Days=30}}"
```

3. Verify Versioning and lock objection 
```md 
aws s3api get-object-lock-configuration --bucket <bucketname> (this is check for bucketname)
aws s3api head-object --bucket <buckname> --key test-file.txt (this is for file or folder)
```
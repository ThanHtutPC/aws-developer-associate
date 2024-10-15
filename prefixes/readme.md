1. Create an s3 bucket (run the create-bk.sh)

2. Create a File in a Specific Prefix (run multi-folder.sh for 1024)
```md
if you want to new file directory for 1024 bytes you can run <app.py>
_An error occurred (KeyTooLongError) when calling the PutObject operation: Your key is too long_ when over 1024 byats
```

3. Verify the File Exists (run verify-file.sh)

4. Get the content of the file (get-object.sh)
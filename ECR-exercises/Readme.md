## Create the docker images 

```md 
docker build . -t <images_name>:<version>
docker run -d -p 5000:5000 --name app1 <images_name>:<version>
```

## Create the ECR images

```md
aws ecr create-repository --repository-name <name> --image-tag-mutability MUTABLE
aws ecr create-repository --repository-name <name> --image-tag-mutability IMMUTABLE
```

## Docker login and update to your public repo 

```md 
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <Account ID>.dkr.ecr.us-east-1.amazonaws.com
docker tag hello-world:v1.0 <Account ID>.dkr.ecr.us-east-1.amazonaws.com/testing-repo:latest
docker push <Account ID>.dkr.ecr.us-east-1.amazonaws.com/testing-repo:latest
docker pull <Account ID>.dkr.ecr.us-east-1.amazonaws.com/testing-repo:latest
docker run -d -p 5000:5000 --name app1 <Account ID>.dkr.ecr.us-east-1.amazonaws.com/simple-app:latest
```

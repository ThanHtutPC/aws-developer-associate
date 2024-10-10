## convert yaml to json 

```
snap install yq 

cat <file-name> | yq e -j > output.json 
```

## create the policy 

```md 
aws iam create-policy \
    --policy-name my-policy \
    --policy-document file://policy.json \
    --description "This policy grants access to all Put, Get, and List actions for my-bucket"
```

## Attach user 

```
aws iam attach-user-policy \
    --policy-arn arn:aws:iam::067120797866:policy/my-policy \ 
    --user-name thanhtutln2020
```

## show the arn from Policy list 

```md 
aws iam list-policies --query 'Policies[*].[PolicyName, Arn]' --output text | grep my-policy
```

## Update policy 

```md 
aws iam create-policy-version \
--policy-arn arn:aws:iam::067120797866:policy/my-policy \
--policy-document "$(cat policy.yaml | yq e -j)" --set-as-default
```

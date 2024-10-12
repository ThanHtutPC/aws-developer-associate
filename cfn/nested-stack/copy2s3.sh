 #!/usr/bin/env bash 
 
 echo "== copy to s3"

 backname="nested-statck-13337"

 aws s3 cp template.yaml s3://$backname/create-s3.yaml

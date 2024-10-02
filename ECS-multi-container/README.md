## This is the application structure

```md
├── app.py
├── Dockerfile
└── README.md
``` 

## Multi Docker run with command 

```md
docker run --name my-postgres -e POSTGRES_USER=myuser -e POSTGRES_PASSWORD=mypassword -e POSTGRES_DB=mydb -p 5432:5432 -d postgres

docker run -it --name my-python-app --link my-postgres:db -p 8000:8000 -v "$PWD":/usr/src/app -w /usr/src/app python:3.9-slim bash

pip install --upgrade pip

pip install psycopg2-binary flask

python3 app.py

docker rm $(docker ps -a -q) (remove the process docker)
```

## multi container run with command

```md
docker run -d \
    --network=mynetwork \
    --name db \
    -port 5432:5432 \ 
    -e POSTGRES_DB=mydb \
    -e POSTGRES_USER=myuser \
    -e POSTGRES_PASSWORD=mypassword \
    postgres

docker run -d \
    --network=mynetwork \
    -p 8000:8000 \
    -v $(pwd)/app.py:/app.py \
    -w / \
    python:3.9-slim \
    bash -c "pip install psycopg2-binary Flask && python app.py"

curl http://localhost:8000 
```
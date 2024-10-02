## This is the application structure

```md
├── app.py
├── docker-compose.yml
├── Dockerfile
├── README.md
└── requirements.txt
``` 

## Multi Docker run with command 

```md
docker run --name my-postgres -e POSTGRES_USER=myuser -e POSTGRES_PASSWORD=mypassword -e POSTGRES_DB=mydb -p 5432:5432 -d postgres

docker run -it --name my-python-app --link my-postgres:db -p 8000:8000 -v "$PWD":/usr/src/app -w /usr/src/app python:3.9-slim bash

&nbsp;pip install --upgrade pip

pip install psycopg2-binary flask

python3 app.py

docker rm $(docker ps -a -q) (remove the process docker)
```

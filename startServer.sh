echo Running server $1 ...
echo Building server image ...
echo : docker build -t $1 servers/$1
docker build -t $1 servers/$1

echo Starting server ...
docker run -d --network=testnet --name=server --env-file servers/$1/env.list $1
echo Started

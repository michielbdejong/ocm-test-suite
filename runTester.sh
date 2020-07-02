echo Running tester $1 interactively, assuming server $2 is up on the testnet ...
echo Building tester image...
docker build -t $1 testers/$1

echo Starting tester interactively ...
docker run -it --network=testnet --name=tester --env-file servers/$2/env.list $1 /bin/bash

echo Removing tester after it exited...
docker rm tester
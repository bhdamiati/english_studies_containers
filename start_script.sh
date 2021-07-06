#!bin/bash
YELLOW='\033[1;33m';
NC='\033[0m';

pwd=`pwd`

cd /home/files/bhdamiati/english/containers

echo "Removing old containers"
docker-compose stop && docker-compose rm -f


echo "Starting new containers"
docker-compose up --remove-orphans -d

cd $pwd


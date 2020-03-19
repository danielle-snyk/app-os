#!/bin/sh

docker system info | grep 'Username: snykgoof'
logged_in=$?
if [ $? -eq 0 ]; then
  docker system info | grep 'Registry: https://index.docker.io/v1/'
  logged_in=$?
fi

if [ ! $logged_in -eq 0 ]; then
  echo "Login to Dockerhub as user \"snykgoof\" (see 1pass)"
  docker login --username snykgoof
fi

echo
echo Building node-snykin
echo ====================
cd node-snykin
docker build --tag snykgoof/os-app:node-snykin .
cd ..
docker push snykgoof/os-app:node-snykin

echo
echo Building php-simple
echo ===================
cd php-simple
docker build --tag snykgoof/os-app:php-simple .
cd ..
docker push snykgoof/os-app:php-simple

echo
echo Building ruby-simple
echo ====================
cd ruby-simple
docker build --tag snykgoof/os-app:ruby-simple .
cd ..
docker push snykgoof/os-app:ruby-simple

echo
echo Building python-simple
echo ======================
cd python-simple
docker build --tag snykgoof/os-app:python-simple .
cd ..
docker push snykgoof/os-app:python-simple

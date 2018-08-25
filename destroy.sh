docker service rm $(docker service ls -q)
docker kill $(docker ps -q)
docker rm $(docker ps -qa)
echo y | docker volume prune
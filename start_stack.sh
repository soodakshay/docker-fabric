export COMPOSE_PROJECT_NAME=daala
docker stack deploy --compose-file zookeeper.yaml daala
docker stack deploy --compose-file kafka.yaml daala
docker stack deploy --compose-file cas.yaml daala
docker stack deploy --compose-file couchdb_org.yaml daala

docker stack deploy --compose-file clientinr_org.yaml daala
docker stack deploy --compose-file  daalaaud_org.yaml daala
docker stack deploy --compose-file  clientaud_org.yaml daala
docker stack deploy --compose-file daalainr_org.yaml daala

docker stack deploy --compose-file daala_live_ordere.yaml daala
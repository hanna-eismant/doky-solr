tar -cvzf doky-solr.tgz solr-9.5.0
docker build -f solr-9.5.0/docker/Dockerfile -t dokydev.azurecr.io/doky-solr:latest - < doky-solr.tgz
docker login -u USER -p PASSWORD dokydev.azurecr.io
docker push dokydev.azurecr.io/doky-solr:latest

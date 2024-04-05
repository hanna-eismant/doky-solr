#tar -r doky-solr.tgz ./solr/*
#cd solr || exit
tar -cvzf doky-solr.tgz solr-9.5.0
DOCKER_BUILDKIT=0 docker build -f solr-9.5.0/docker/Dockerfile -t doky-solr:latest - < doky-solr.tgz

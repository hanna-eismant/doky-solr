#tar -r doky-solr.tgz ./solr/*
cd solr || exit
tar -cvzf doky-solr.tgz ./
docker build -f docker/Dockerfile -t doky-solr:latest - < doky-solr.tgz

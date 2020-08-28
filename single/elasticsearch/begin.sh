#! /bin/sh

mkdir -pv ../data/elasticsearch/conf/
mkdir -pv ../data/kibana/conf/

cd ../data/elasticsearch/conf/

echo 'cluster.name: elasticsearch' >> elasticsearch.yml
echo 'network.host: 0.0.0.0' >> elasticsearch.yml


cd ../data/kibana/conf/

echo 'elasticsearch.hosts: "http://es:9200"' >> kibana.yml
echo 'server.name: kibana' >> kibana.yml
echo 'server.host: "0"' >> kibana.yml



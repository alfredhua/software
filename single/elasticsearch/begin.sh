#! /bin/sh

mkdir -pv ../data/elasticsearch/conf/

cd ../data/elasticsearch/conf/

echo 'cluster.name: elasticsearch' >> elasticsearch.yml
echo 'network.host: 0.0.0.0' >> elasticsearch.yml

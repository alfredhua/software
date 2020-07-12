#! /bin/sh

mkdir -pv ../data/elasticsearch/conf/

cd ../data/elasticsearch/conf/

echo 'cluster.name: elasticsearch' > elasticsearch.yml
echo 'network.host: 127.0.0.1' > elasticsearch.yml

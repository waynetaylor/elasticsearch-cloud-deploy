#!/bin/bash
set -e

# Get the PGP Key
wget -qO - https://d3g5vo6xdbdb9a.cloudfront.net/GPG-KEY-opendistroforelasticsearch | sudo apt-key add -
echo "deb https://d3g5vo6xdbdb9a.cloudfront.net/apt stable main" | sudo tee -a   /etc/apt/sources.list.d/opendistroforelasticsearch.list

echo "Installing Open Distro for Elasticsearch version $ES_VERSION"
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-oss-7.2.1-amd64.deb
sudo dpkg -i elasticsearch-oss-7.2.1-amd64.deb
sudo apt-get update
apt-get install opendistroforelasticsearch

mv elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

#!/bin/bash

## 安装docker-compose
#docker-compose_install="../pkg_Qsetup/docker/docker-compose_install.sh"
#command -v docker-compose >/dev/null 2>&1 || { chmod +x docker-compose_install; ./docker-compose_install;}

# 此脚本用于不方便安装docker-compose工具
# 纯粹使用shell脚本启动docker容器

# MySQL
docker run -d \
  --name mysql8 \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=123456 \
  -v /home/mysql8:/var/lib/mysql \
  -v /home/mysql8/conf:/etc/mysql/conf.d \
  -v /home/mysql8/logs:/logs \
  -v /home/mysql8/data:/data \
  -v /home/mysql8/init:/docker-entrypoint-initdb.d \
  -v /home/mysql8/tmp:/tmp \
  -v /home/mysql8/backup:/backup \
  -v /home/mysql8/conf.d:/etc/mysql/conf

# Elasticsearch
docker run -d \
  --name elasticsearch \
  -p 9200:9200 \
  -p 9300:9300 \
  -v /home/elasticsearch/conf:/usr/share/elasticsearch/config \
  -v /home/elasticsearch/data:/usr/share/elasticsearch/data \
  -v /home/elasticsearch/logs:/usr/share/elasticsearch/logs \
  -v /home/elasticsearch/plugins:/usr/share/elasticsearch/plugins \
  -v /home/elasticsearch/backup:/usr/share/elasticsearch/backup \
  elasticsearch:latest

# Kibana
docker run -d \
  --name kibana \
  -p 5601:5601 \
  -e ELASTICSEARCH_URL=http://elasticsearch:9200 \
  -v /home/kibana/conf:/usr/share/kibana/config \
  -v /home/kibana/data:/usr/share/kibana/data \
  -v /home/kibana/logs:/usr/share/kibana/logs \
  -v /home/kibana/plugins:/usr/share/kibana/plugins \
  kibana:latest

# Redis
docker run -d \
  --name redis \
  -p 6379:6379 \
  -v /home/redis/conf:/usr/local/etc/redis \
  -v /home/redis/data:/data \
  redis:latest redis-server /usr/local/etc/redis/redis.conf

# RabbitMQ
docker run -d \
  --name rabbitmq \
  -p 5672:5672 \
  -p 15672:15672 \
  -v /home/rabbitmq/conf:/etc/rabbitmq \
  -v /home/rabbitmq/data:/var/lib/rabbitmq \
  rabbitmq:3-management

# Kafka
docker run -d \
  --name kafka \
  -p 9092:9092 \
  -e KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181 \
  -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://localhost:9092 \
  -e KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1 \
  -e KAFKA_TRANSACTION_STATE_LOG_REPLICATION_FACTOR=1 \
  confluentinc/cp-kafka:latest

# Minio
docker run -d \
  --name minio \
  -p 9000:9000 \
  -p 9001:9001 \
  -e MINIO_ROOT_USER=admin \
  -e MINIO_ROOT_PASSWORD=123456 \
  -v /home/minio/data:/data \
  -v /home/minio/config:/root/.minio \
  minio/minio server /data --console-address ":9001"

# Nacos
docker run -d \
  --name nacos \
  -p 8848:8848 \
  -e MODE=standalone \
  -e SPRING_DATASOURCE_PLATFORM=mysql \
  -e MYSQL_DATASOURCE_URL=jdbc:mysql://127.0.0.1:3306/nacos?characterEncoding=utf8 \
  -e MYSQL_DATASOURCE_USERNAME=root \
  -e MYSQL_DATASOURCE_PASSWORD=123456 \
  nacos/nacos-server:latest

# Zipkin
docker run -d \
  --name zipkin \
  -p 9411:9411 \
  openzipkin/zipkin

# Zookeeper
docker run -d \
  --name zookeeper \
  -p 2181:2181 \
  confluentinc/cp-zookeeper:latest


#!/bin/bash
#������ڵ���û�б��ݽڵ�ļ�Ⱥ

cd /usr/local/src/redis_cluster/7001/
redis-server redis-7001.conf

cd /usr/local/src/redis_cluster/7002/
redis-server redis-7002.conf

cd /usr/local/src/redis_cluster/7003/
redis-server redis-7003.conf

cd /usr/local/src/

redis-trib.rb create --replicas 0 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003

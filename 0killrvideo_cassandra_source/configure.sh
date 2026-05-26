## instalar AWS CLOUD9 usando EC2 com Ubuntu com pc de tamnho medio m5.large

 
 
## -- instalar docker-compose

sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose


sudo ln -sf /usr/local/bin/docker-compose /usr/bin/docker-compose

 
## ---------------------------------------------------------------

curl ifconfig.me

## -- no navegador remoto abrir 

## http://<MY_IP>:8080

## --------------------------------------------------------------- 
 
docker-compose up -d cassandra-node1
sleep 100
docker-compose up -d cassandra-node2
docker-compose up -d cassandra-node3
docker-compose up -d dbgate

## ---------------------------------------------------------------
docker ps -a


docker exec -it cassandra_node1 nodetool status


docker exec -it cassandra_node1 cqlsh


CREATE KEYSPACE killrvideo 
WITH REPLICATION = { 
    'class' : 'NetworkTopologyStrategy', 
    'DC1' : 3 
};


## CREATE KEYSPACE killrvideo WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };



## ---------------------------------------------------------------
## --- limpar 
docker-compose down -v


## -- se erro

docker rm -f $(docker ps -aq)



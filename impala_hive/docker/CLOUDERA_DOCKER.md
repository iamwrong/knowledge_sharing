# Use impala in your local environement

The easiest way to use a impala is to use an already existing docker image. 
This guide focus on cloudera-docker

## Presequesites

* Docker desktop

### Getting started


dowload the docker image and publish it to your local repository
```
wget https://downloads.cloudera.com/demo_vm/docker/cloudera-quickstart-vm-5.13.0-0-beta-docker.tar.gz 

tar -zxvf cloudera-quickstart-vm-5.13.0-0-beta-docker.tar.gz

docker import - cloudera/quickstart:5.13 < cloudera-quickstart-vm-5.13.0-0-beta-docker/*.tar
```

start the image and run the script to activate the services
The hostname seems to be required, because it is _harcoded_ on *-site.xml files


```
docker build --no-cache -t my-cloudera:5.13 -f Dockerfile .

docker run --hostname=quickstart.cloudera --privileged -i -t -d my-cloudera:5.13 /usr/bin/start_services.sh
```

```
docker run --hostname=quickstart.cloudera --privileged -i -t -d cloudera/quickstart:5.13 /usr/bin/docker-quickstart
```


take over the shell
```
#list running containers
docker ps

#take control of the shell in the container
docker exec -it <container_id> /bin/bash

# run some hadoop comands
hdfs dfs -ls /


```

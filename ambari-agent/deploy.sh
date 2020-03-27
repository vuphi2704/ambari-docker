#!/bin/bash

if [ $1 = "on" ]
then
        sudo docker load -i ambari-agent.tar
	sudo docker load -i ubuntu-server.tar
        sudo docker run -dit --name pilot --network mdaas ubuntu_server
        sudo docker-compose up -d
        echo "Done"
elif [ $1 = "off" ]
then
	sudo docker-compose down -v
	echo "Done"  
else
	echo "Please enter your option"
fi

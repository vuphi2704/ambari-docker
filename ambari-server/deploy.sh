#!/bin/bash

if [ $1 = "on" ]
then
        sudo docker load -i ambari-server.tar       
	sudo docker load -i ubuntu-server.tar
        sudo docker run -dit --name pilot --network mdaas ubuntu_server
        sudo docker-compose up -d
	sleep 40
        echo "Done ,you can access to Ambari server by the URL your-ip:8087"
elif [ $1 = "off" ]
then
	sudo docker-compose down -v
	echo "Done"  
else
	echo "Please enter your option"
fi

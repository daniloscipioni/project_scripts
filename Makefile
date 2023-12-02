all-env-up: kafka-container-up services-container-up

all-env-down: services-container-down kafka-container-down

kafka-container-up:
	cd \kafka && docker-compose up -d
	echo "Waiting for 15 seconds until stabilish registry..." && sleep 15

kafka-container-down:
	cd \kafka && docker-compose down 

services-container-up:
	cd \services && docker-compose up -d

services-container-down:
	cd \services && docker-compose down --remove-orphans
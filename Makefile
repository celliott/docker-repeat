# Makefile for docker-repeat


# docker settings
ENVS =
PORTS = -p 7002:7002
CONTAINER = repeat
VOLUMES = 



.PHONY: container run

container :
	docker build -t $(CONTAINER) .

run :
	docker run --log-driver syslog --name $(CONTAINER) -i -d $(PORTS) $(ENVS) $(VOLUMES) -t $(CONTAINER)
stop :
	docker stop $(CONTAINER)
	docker rm $(CONTAINER)
kill :
	docker kill $(CONTAINER)
	docker rm $(CONTAINER)
restart :
	docker kill $(CONTAINER)
	docker rm $(CONTAINER)
	docker run --log-driver syslog --name $(CONTAINER) -i -d $(PORTS) $(ENVS) $(VOLUMES) -t $(CONTAINER)
attach:
	docker attach $(CONTAINER)

tail:
	docker logs -f $(CONTAINER)

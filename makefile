TAG = 0.1.0
docker-network-up:
	docker network create --driver=bridge --subnet=192.168.0.0/16 br0
my-ansible-build:
	docker build -f ./ansible/dockerfile -t raywu60kg/ansible:${TAG} .
my-ansible-up:
	docker run -it \
        --rm \
	    --name ansible \
		--network=br0 \
		--ip 192.168.1.1 \
	    raywu60kg/ansible:${TAG} \
		/bin/bash
my-testing-env-build:
	docker build -f ./my-testing-env/dockerfile -t raywu60kg/testing-env:${TAG} .
my-testing-env-up:
	docker run -it \
        --rm \
	    --name testing-env \
		--network=br0 \
		--ip 192.168.1.2 \
	    raywu60kg/testing-env:${TAG} \
		/bin/bash

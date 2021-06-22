ELASTIC_DATA=./elastic/data

start:
	if [ ! -d $(ELASTIC_DATA) ]; then mkdir $(ELASTIC_DATA); fi
	docker-compose up -d

start_verbose:
	if [ ! -d $(ELASTIC_DATA) ]; then mkdir $(ELASTIC_DATA); fi
	docker-compose up

stop:
	docker container stop es01
	docker container stop ls01
	docker container stop kib01

clean:
	rm -rfv $(ELASTIC_DATA)/*
	docker container rm es01
	docker container rm ls01
	docker container rm kib01



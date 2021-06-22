ELASTIC_DATA=./elastic/data/*

start:
	docker-compose up -d

start_verbose:
	docker-compose up

stop:
	docker container stop es01
	docker container stop ls01
	docker container stop kib01

clean:
	rm -rfv $(ELASTIC_DATA)
	docker container rm es01
	docker container rm ls01
	docker container rm kib01



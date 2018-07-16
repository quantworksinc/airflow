.PHONY: clean build-dev build-prod push-dev push-prod

clean:
	docker image prune -f

build-base: 
	docker build -t quantworks/airflow:base -f Dockerfile_base_prod .

build-dev: 
	docker build -t quantworks/airflow:dev -f Dockerfile_base_dev .

push-dev:
	docker push quantworks/airflow:dev
push-base:
	docker push quantworks/airflow:prod


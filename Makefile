DB_DATA=/
DB_DATA_LOCAL=$(shell pwd)/database/data

APP_DATA=/app
APP_DATA_LOCAL=$(shell pwd)/application
APP_PORT=3000

USER_ID=$(shell id -u)
GROUP_ID=$(shell id -g)

app:
	docker run -it --rm --name articleservice_node \
		-v $(APP_DATA_LOCAL):$(APP_DATA) \
		-u $(USER_ID):$(GROUP_ID) -w $(APP_DATA) \
		-p $(APP_PORT):$(APP_PORT) \
		node bash

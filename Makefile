docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-build:
	docker-compose up --build -d

test:
	docker-compose exec php-cli vendor/bin/phpunit --colors=always

assets-install:
	docker-compose exec node yarn install

assets-dev:
	docker-compose exec node yarn run dev

assets-watch:
	docker-compose exec node yarn run watch

perm:
	sudo chown -R ${USER}:${GROUP} ~/.npm
	sudo chown -R ${USER}:${GROUP} ~/.config
	sudo chown ${USER}:${USER} bootstrap/cache -R
	sudo chown ${USER}:${USER} storage -R
	if [ -d "node_modules" ]; then sudo chown ${USER}:${USER} node_modules -R; fi
	if [ -d "public/build" ]; then sudo chown ${USER}:${USER} public/build -R; fi
	chmod -R 777 storage

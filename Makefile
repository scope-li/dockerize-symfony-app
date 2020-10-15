APP_NAME=symfony

build: # Build the image.
	docker build -t symfony/app:latest -f docker/Dockerfile .

run: # Run the container.
	docker run -d -p 8080:80 -v $(PWD)/.env.local:/var/www/html/.env.local --name=$(APP_NAME) symfony/app:latest

stop: # Stop and remove the container.
	docker stop $(APP_NAME); docker rm $(APP_NAME)

bash: # Go into container bsh.
	docker exec -it $(APP_NAME) bash

open: # Open symfony in webbrowser.
	open http://localhost:8080


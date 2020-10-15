# Dockerize a symfony application
A simple example how you can dockerized a symfony example.  

## Setup
```bash
$ git clone git@github.com:scope-li/dockerize-symfony-app.git
$ cd dockerize-symfony-app
$ make build
```

## Run
To run the container and open the page:
```bash
$ make run
$ make open
```
To go into the running container:
```bash
$ make bash
```
To stop an remove the container:
```bash
$ make stop
```

## Run with docker-compose
```bash
$ docker-compose up -d
```

## Configure the app
You have a `.env.local` in the root folder that is mount into the container.
In this file you can change the value for `EXAMPLE_NAME` to see another name.

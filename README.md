# Studi-vue-front

## Docker

Build image
```sh
docker build . -t spring-app
```

Run app
```sh
docker run -it -p 8081:8080 spring-app
```

Launch
```sh
docker-compose up
```

Launch with build
```sh
docker-compose up --force-recreate --build
```


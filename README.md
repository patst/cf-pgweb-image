# pgweb docker Image

Used for debugging purposes to look into postgres databases provisioned by a cloud foundry Servicebroker when the database cannot be accessed from outside the platform.

Automatically checks the env vars for a bound database service and connects to the database

## Build

The image is build using Dockerhub and is available at https://hub.docker.com/repository/docker/patst/cf-pgweb .

## Run

Create the application, bind the service and start the application:

```
cf push --docker-image patst/cf-pgweb --no-start postgres-debug
cf bind-service postgres-debug postgres-service-instance
cf start postgres-debug
```

Then the application is accessible via browser.

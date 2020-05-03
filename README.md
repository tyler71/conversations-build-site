Builds and hosts the app, `Conversations` [/iNPUTmice/Conversations](https://github.com/iNPUTmice/Conversations)

Ideally, it tries to keep as close as possible with the latest master of `Conversations`.  
It builds the app using the [tyler71/convauto](https://hub.docker.com/r/tyler71/convauto) docker image on the [docker](https://github.com/tyler71/conversations-build-site/tree/docker) branch  
To build a version using docker run
```
docker container run --rm -v $(pwd):/output tyler71/convauto master
```

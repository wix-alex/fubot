# fubot
hubot support for facebook user accounts from a docker container.

You can add any hubot scripts you want into the scripts folder and they'll get copied over when you build the container. 

Facebook has a Messenger Bots api, but you can't use it to create anything for individual facebook user accounts. This package will allow you to do just that. 

## installation

Start by cloning the repo: 
```shell
git clone https://github.com/DavidAwad/fubot
```

Open up the dockerfile and add your facebook credentials.

Once that's done, run the following commands to build and run the image. 

```shell
docker build -t fubot . && docker run fubot
```

Next you want to go on facebook messenger and message your user account a specific string to test that it works.

```
fubot ping
```

It should respond `PONG`. If you get that back you're all set! Good luck and have fun!

You can also very easily port this to resin.io if you're interested in that sort of stuff. It's on the roadmap


Also on [Docker Hub](https://hub.docker.com/r/davidawad/fubot/)!

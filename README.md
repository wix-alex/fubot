# fubot
hubot support for facebook user accounts from a docker container.

You can add any hubot scripts you want into the scripts folder and they'll get copied over when you build the container. 


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

You can also very easily port this to resin.io if you're interested in that sort of stuff.

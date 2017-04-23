# fubot
hubot support for facebook messenger within a docker container.

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

You're free to write and add any scripts you want in the scripts folder and they'll be copied over to hubot within the container. 


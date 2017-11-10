# fubot
hubot support for facebook user accounts from a docker container.

Note that this is separate from the facebook messenger api. That bots api only applies to facebook pages, this allows you to create a bot for a facebook user account. 

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

### running locally

Alternatively you can run this bot by exporting a few variables with the credentials for the facebook user account. I personally keep them in a separate file that gets sourced on my shell. 

Just make sure these variables exist in the environment trying to run fubot. 

```shell
# do not share these
export HUBOT_FB_USERNAME="<FB_USERNAME>"
export HUBOT_FB_PASSWORD="<FB_PASSWORD>"

npm install

# run these from within the fubot directory
./bin/hubot -a messenger 
```




## Testing if it's running. 
It should respond `PONG`. If you get that back you're all set! Good luck and have fun!

Now simply make edits to the examples sitting inside the `scripts` directory. 


[Also on Docker Hub](https://hub.docker.com/r/davidawad/fubot/)!

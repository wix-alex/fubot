FROM node:boron
MAINTAINER David Awad

ENV  HUBOT_FB_USERNAME=<your_username_here>
ENV  HUBOT_FB_PASSWORD=<your_password_here>

EXPOSE 80

# clone latest hubot
ADD https://api.github.com/repos/github/hubot/compare/master...HEAD /dev/null
RUN git clone https://github.com/github/hubot /hubot

# copy over user scripts
COPY ./scripts/* /hubot/scripts

WORKDIR /hubot

RUN npm install -g coffee-script
RUN npm install hubot-messenger
RUN npm install 
CMD ["./bin/hubot", "-a", "messenger"]
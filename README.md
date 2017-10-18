# Overview
This repository is storing Dockerfile that create hubot to be connected with slack.

# Usage
Please prepare docker-compose.yml that like The following code.
~~~
version: '3'

services:
    hubot:
      image: gaku3601/hubot:latest
            args:
                - owner=
                - botname=
                - description=
        environment:
            - HUBOT_SLACK_TOKEN=
~~~

...I'm writing...

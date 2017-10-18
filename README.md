# Overview
This repository is storing Dockerfile that create hubot to be connected with slack.

# Usage
Please prepare docker-compose.yml that like The following code.
~~~
version: '3'

services:
    hubot:
        image: gaku3601/hubot:latest
        environment:
            - HUBOT_SLACK_TOKEN=xoxb-11111111-XXXXXXXXXXXXXXXXXXXXXXXXX # set slack token
            - OWNER=gaku pro.gaku@gmail.com # bot owner
            - BOTNAME=hey # botname
            - DESCRIPTION=testbot # description of create bot  
~~~
[environment]  
HUBOT_SLACK_TOKEN,  
OWNER,  
BOTNAME,  
DESCRIPTION  
Please be sure to set these.  
  
Setting up to this point, Bot show up to your slack.
When You command "ping" to your bot,bot willing reply "PONG".


FROM node:6.9

MAINTAINER Jerry Bendy <jerry@icewingcc.com>

# install and clean cache
RUN npm i -g yarn pm2 --registry=https://registry.npm.taobao.org \
    && npm cache clean

# set taobao source
RUN yarn config set registry "https://registry.npm.taobao.org"

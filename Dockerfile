From node:8

RUN apt-get update \
    && apt-get install --no-install-recommends -y rsync python python-pip build-essential libssl-dev libffi-dev python-dev \
    && apt-get clean \
    && npm install -g node-gyp yarn@1.6 \
    && chmod +x /usr/local/lib/node_modules/yarn/bin/yarn.js \
    && pip install awscli

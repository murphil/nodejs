FROM nnurphy/deb

RUN set -ex \
  ; apt-get update \
  ; curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - \
  ; apt-get install -y nodejs \
  ; npm -g install node-gyp \
  ; npm cache clean -f \
  ; npm config set registry https://registry.npm.taobao.org \
  ; apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

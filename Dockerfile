FROM nnurphy/ub

RUN set -ex \
  ; curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  ; apt-get install -y nodejs \
  ; npm -g install node-gyp \
  ; npm cache clean -f \
  ; npm config set registry https://registry.npm.taobao.org \
  ; apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

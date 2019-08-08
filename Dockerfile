FROM nnurphy/deb

ENV NODE_VERSION=12.8.0
RUN set -ex \
  ; cp /etc/apt/sources.list /etc/apt/sources.list.tuna \
  ; sed -i 's!https://mirrors.tuna.tsinghua.edu.cn!http://deb.debian.org!g' /etc/apt/sources.list \
  ; apt-get update \
  ; curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - \
  ; apt-get install -y nodejs \
  ; npm -g install node-gyp \
  ; npm cache clean -f \
  ; npm config set registry https://registry.npm.taobao.org \
  ; apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

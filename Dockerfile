FROM nnurphy/deb

ENV NODE_HOME=/opt/node NODE_VERSION=12.13.0
ENV PATH=${NODE_HOME}/bin:$PATH
RUN set -ex \
  ; mkdir -p ${NODE_HOME} \
  ; wget -q -O- https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz \
    | tar xJ -C ${NODE_HOME} --strip-components 1 \
  ; chown -R root:root ${NODE_HOME} \
  ; npm -g install node-gyp \
  ; npm cache clean -f \
  ; npm config set registry https://registry.npm.taobao.org \
  ; apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

FROM nnurphy/deb

RUN set -ex \
  ; apt-get update \
  ; curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - \
  ; apt-get install -y nodejs \
  ; apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

FROM golang:1.11

# Install node
RUN wget http://nodejs.org/dist/v14.3.0/node-v14.3.0.tar.gz && \
  tar -zxvf node-v14.3.0.tar.gz && \
  cd node-v14.3.0 && ./configure && make && \
  make install

RUN go version
RUN pip3 install awscli
RUN npm i -g yarn

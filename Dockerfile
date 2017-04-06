FROM node:7.8
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

ENV PATH="$HOME/.yarn/bin:$PATH"
ENV HOST="0.0.0.0"

RUN mkdir -p /code
ADD package.json /code
ADD yarn.lock /code

WORKDIR /code
RUN yarn

ENTRYPOINT ["yarn"]

FROM node:7.8
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
ENV PATH="$HOME/.yarn/bin:$PATH"
ENV HOST="0.0.0.0"
RUN yarn global add create-react-app
# Run docker-compose create-react-app my-app and move all of the contents into the root
WORKDIR /code
ENTRYPOINT ["yarn"]

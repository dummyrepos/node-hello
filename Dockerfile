# base image
FROM node:18-alpine

#metadata
LABEL project="dmt-pocs"
LABEL author="khaja"
# copy the code from local folder into docker image
ADD . /myapp
# application runs on 3000 port
EXPOSE 3000
# working directory
WORKDIR /myapp
# install dependencies
RUN npm install

# command to be executed when container starts
CMD ["node", "index.js"]
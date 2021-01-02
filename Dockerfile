FROM node:14
#application folder
ARG APP_DIR=app
RUN mkdir -p ${APP_DIR}
WORKDIR ${APP_DIR}
# install dependencies
COPY package*.json ./
RUN npm install
# RUN npm install --production
#copy project files
COPY . .
# lisbuiten port
EXPOSE 3000
# start project
CMD ["npm", "start"]

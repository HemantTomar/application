FROM node:alpine
WORKDIR /app
COPY ./package.json ./
RUN npm install
COPY ./ ./
#CMD [./abc.sh]
CMD ["npm", "start"]

#dockervolume
#docker run -p 8080:8080 -v /app/node_modules -v $(pwd):/app c08b09118e7b changes in local will reflect in website

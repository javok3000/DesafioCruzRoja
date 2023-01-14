# Building
FROM node:18-alpine as build
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install --legacy-peer-deps --global-style
COPY . .
RUN npm run build
# Copying to PROD
FROM nginx:alpine
COPY --from=build /usr/src/app/build /usr/share/nginx/html
#COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
FROM nginx:alpine
EXPOSE 80
MAINTAINER gopal
LABEL this file is to create a container for my app
WORKDIR /usr/share/nginx/html
COPY index.html .

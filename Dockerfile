FROM ubuntu

MAINTAINER naveenrayapati538@gmail.com

RUN apt-get update

RUN apt-get install nginx -y

RUN apt-get install git -y

RUN git clone https://github.com/NaveenRayapati/cloudbuild.git

COPY /repo-1/index.html /usr/share/nginx/html

EXPOSE 80

CMD service nginx start

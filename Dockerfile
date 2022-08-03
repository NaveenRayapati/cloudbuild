FROM ubuntu

MAINTAINER naveenrayapati538@gmail.com

WORKDIR /naveen

RUN apt-get update

RUN apt-get install nginx -y

RUN apt-get install git -y


RUN git clone https://github.com/NaveenRayapati/cloudbuild.git /usr/share/nginx/html/

#COPY /naveen/cloudbuild/index.html /usr/share/nginx/html/

EXPOSE 80

CMD service nginx start

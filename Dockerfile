FROM nginx:1.11.1

RUN apt-get update -qq
RUN apt-get upgrade -y
RUN apt-get install -y python-pip

RUN pip install mkdocs mkdocs-material

RUN cd /usr/share/nginx && mkdocs new demo

COPY mkdocs.yml /usr/share/nginx/demo
RUN mkdir -p /usr/share/nginx/demo/docs
ADD docs/ /usr/share/nginx/demo/docs

WORKDIR /usr/share/nginx/demo
RUN mkdocs build

RUN rm -f /etc/nginx/conf.d/*
COPY mkdocs.conf /etc/nginx/conf.d

RUN sed -i "s|#gzip  on;|gzip  on; etag  off; server_tokens off; gzip_types *;|" /etc/nginx/nginx.conf

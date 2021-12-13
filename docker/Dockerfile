FROM httpd:latest
WORKDIR /usr/local/apache2/htdocs
RUN rm -rf index.html
ADD index.html .
EXPOSE 80
CMD httpd -DFOREGROUND


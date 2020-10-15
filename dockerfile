FROM centos:7
RUN yum -y install httpd unzip
CMD apachectl -DFOREGROUND
#ENV HTML beginner-html-site-styled
ADD https://github.com/mcpdb/oci.git /var/www/html/code1.zip
#ADD with env variable
#ADD https://github.com/mdn/beginner-html-site-styled/archive/gh-pages.zip /var/www/html/code.zip
RUN cd /var/www/html/ && unzip code1.zip
#&&  mv /var/www/html/beginner-html-site-styled-gh-pages/* /var/www/html/ && echo $HTML > /var/www/html/env.html
#to test command "echo $HTML > /var/www/html/env.html" http://localhost:9092/env.html
#RUN cd /var/www/html/ && unzip code.zip &&  mv /var/www/html/web/* /var/www/html/

#docker build -t apache:v1 -f dockerfile .
#docker run -d -p 9090:80 apache:v1
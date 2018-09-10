FROM java
MAINTAINER spencer
RUN apt-get update
RUN apt-get install -y wget

RUN cd /

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-8/v8.5.33/bin/apache-tomcat-8.5.33.tar.gz

RUN tar zxvf apache-tomcat-8.5.33.tar.gz

CMD ["/apache-tomcat-8.5.33/bin/catalina.sh", "run"]

EXPOSE 8080

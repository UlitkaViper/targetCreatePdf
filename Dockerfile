FROM tomcat:9.0-alpine

USER root
ADD CreatePDF.war /usr/local/tomcat/webapps/
ADD 123.txt /usr/local/tomcat/webapps/
ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD context.xml  /usr/local/tomcat/webapps/manager/META-INF/

EXPOSE 8080
CMD ["catalina.sh", "run"]

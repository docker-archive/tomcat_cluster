FROM tomcat:7.0.82-jre8-alpine
 
COPY server.xml /usr/local/tomcat/conf/ 
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY ./cluster/WEB-INF /usr/local/tomcat/webapps/ROOT/WEB-INF
COPY ./cluster/index.jsp /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080
CMD ["catalina.sh", "run"]

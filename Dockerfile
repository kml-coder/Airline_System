FROM tomcat:9.0-jdk17

# remove root app
RUN rm -rf /usr/local/tomcat/webapps/*

# JSP + WEB-INF copy
COPY src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

# compile class copy
COPY build/classes/ /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/

# JDBC driver copy
COPY src/main/webapp/WEB-INF/lib/mysql-connector-j-8.2.0.jar /usr/local/tomcat/lib/

EXPOSE 8080
CMD ["catalina.sh", "run"]

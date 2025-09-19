FROM tomcat:9.0-jdk17

# 기본 ROOT 앱 제거
RUN rm -rf /usr/local/tomcat/webapps/*

# JSP + WEB-INF 복사
COPY src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

# 컴파일된 클래스 복사
COPY build/classes/ /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/

# JDBC 드라이버 복사
COPY src/main/webapp/WEB-INF/lib/mysql-connector-j-8.2.0.jar /usr/local/tomcat/lib/

EXPOSE 8080
CMD ["catalina.sh", "run"]

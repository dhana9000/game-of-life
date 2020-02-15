FROM tomcat:8
LABEL owner=none
EXPOSE 8080
RUN curl -u admin:lucky@123 http://18.207.197.225:8081/artifactory/game-of-life-local/com/wakaleo/gameoflife/gameoflife-web/1.0-SNAPSHOT/gameoflife-web-1.0-20200215.074929-1.war -o /usr/local/tomcat/webapps/gameoflife.war
CMD ["catalina.sh", "run"]

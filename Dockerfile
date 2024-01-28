FROM tomcat:8
MAINTAINER sreenivas.g@samsung.com
EXPOSE 8080
LABEL "server"="dev" \
      "project"="flipkart"
COPY target/amazon.war /usr/local/tomcat/webapps/
RUN apt update && apt -y install \
    zip \
    unzip \
    tree  \
    net-tools
CMD ["catalina.sh", "run"]
# CMD catalina.sh run

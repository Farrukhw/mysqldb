# Info: This would copy the *.war applications into tomcat's webapps folder and build the image.

# Note: This should be build from the location ./target folder, 
#       because the docker context doesn't allow to copy files outside of Dockerfile's location.
#       Expected command line to build it from ./target location:
#       user@machine:~/ang_jsp_app$ docker build -f ../tomcat_web_app/Dockerfile . -t farrukhw/dice:ang_jsp


FROM tomcat:8.5.49

LABEL "maintainer"="Farrukh Waheed <farrukhw@gmail.com>" \
     "description"="Image based upon tomcat while deploying the application's war file."

COPY ./target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

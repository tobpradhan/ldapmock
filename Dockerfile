FROM openjdk:11
COPY ./ldap-server.jar /ldap-server.jar
COPY ./ldap-example.ldif /ldap-example.ldif

ENTRYPOINT ["java", "-jar", "/ldap-server.jar","ldap-example.ldif"]

EXPOSE 10389 10636
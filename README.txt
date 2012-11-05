Welcome to Legres Project!
Requirenments: jdk1.6+ maven3+ tomcat6+
In order to run you follow these steps:
1) Insert src/main/java/resources/sql-dump.sql into your MySQL database
2) configure in src/main/webapp/WEB-INF/spring.properties login and password to your database
3) mvn package
4) copy target/LegresProject.war to webapps in your tomcat directory
5) run tomcat 
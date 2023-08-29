# Use a base Tomcat image
FROM tomcat:latest

# Copy your .war file into the Tomcat webapps directory
COPY target/cdac.war /usr/local/tomcat/webapps/

# (Optional) If your .war file has a different name, rename it to 'ROOT.war'
# RUN mv /usr/local/tomcat/webapps/your-app.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

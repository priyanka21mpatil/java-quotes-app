#Base image (OS)
FROM openjdk:17-jdk-alpine

#Working directory for the app (Folder will create if it is not present)
WORKDIR /app

#Copy the code from your HOST to your container
COPY /src/Main.java /app/Main.java
COPY quotes.txt quotes.txt

#Run the command to install libs  OR  to compile/build code
RUN javac Main.java

#Expose the port where app going to work
EXPOSE 8000

#Serve the app or Keep it running
CMD ["java" "Main"]


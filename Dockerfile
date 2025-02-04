# pull a base image wich gives all required tools and libraries 
From openjdk:17-jdk-alpine

# create a folder where app will be stored
WORKDIR /app

# copy the source code from source to container 
COPY src/Main.java /app/Main.java

# compile the application code
RUN javac Main.java

# run the application
CMD ["java","Main"]

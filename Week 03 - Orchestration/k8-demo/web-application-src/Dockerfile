# This line specifies the base image to use. Here, it's using the node image version 13 based on Alpine Linux.
# Alpine Linux is chosen for its small size and reduced attack surface, ideal for creating lightweight containers.
FROM node:13-alpine

# These lines set environment variables within the container. These variables are being used to store the MongoDB username and password.
# ENV statements are often used for providing dynamic data to the application that can be different in different environments.
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

# This RUN command creates a directory /home/app inside the container.
# The '-p' flag is used to ensure that the parent directories are also created if they don't exist.
# Although not strictly necessary (COPY will create missing folders), it's often used for clarity.
RUN mkdir -p /home/app

# This COPY command copies the local 'app' directory (assumed to be in the same directory as the Dockerfile) into /home/app inside the container.
# This is how your application code gets into the container.
COPY ./app /home/app

# The WORKDIR directive is used to define the default directory for the subsequent RUN, CMD, and ENTRYPOINT commands.
# Here, it's setting /home/app as the default directory, so subsequent commands will be executed in this directory.
WORKDIR /home/app

# This RUN command is used to install the npm dependencies specified in your package.json file.
# It's executed in /home/app, as set by WORKDIR, ensuring all dependencies are installed in the application's directory.
RUN npm install

# The CMD command is used to specify the command that gets executed when the container starts.
# Here, it's starting your Node.js application using the 'node' command.
# The 'server.js' file is your Node.js server file. 
# WORKDIR has already set the directory to /home/app, so you only need to specify the file name.
CMD ["node", "server.js"]

FROM debian:bullseye

COPY ./conf/*  /tmp/

RUN apt-get update
RUN apt-get -y install mariadb-server
RUN service mariadb start
RUN chmod +x /tmp/create.sh
RUN chmod +x /tmp/init.sh
RUN /tmp/init.sh

EXPOSE 3306

CMD [ "sh", "-c", "./tmp/create.sh > /tmp/create.sql && mysqld --init-file=/tmp/create.sql"]


# Copy all files from the 'conf' directory to '/tmp/' in the Docker image
#COPY ./conf/*  /tmp/

# Update the package index
#RUN apt-get update

# Install the MariaDB server
#RUN apt-get -y install mariadb-server

# Start the MariaDB service
#RUN service mariadb start

# Grant execute permissions to the 'create.sh' and 'init.sh' scripts in the '/tmp/' directory
#RUN chmod +x /tmp/create.sh
#RUN chmod +x /tmp/init.sh

# Execute the 'init.sh' script
#RUN /tmp/init.sh

# Expose port 3306 (default MySQL/MariaDB port)
#EXPOSE 3306

# Define the default command to run when the container starts
#CMD [ "sh", "-c", "./tmp/create.sh > /tmp/create.sql && mysqld --init-file=/tmp/create.sql"]

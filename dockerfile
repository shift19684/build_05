# Use a Debian or Ubuntu base image where Dash is pre-installed
FROM ubuntu:24.04

# Set a working directory inside the container
WORKDIR /app

RUN apt-get update
RUN apt-get install -y curl


# Copy the script from your host machine into the container image
#COPY script.sh /app/script.sh

COPY . .

# Grant execution permissions to the script
RUN chmod +x /app/script.sh

# Execute the script when the container starts
CMD ["/bin/dash", "/app/script.sh"]

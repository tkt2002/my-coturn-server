# Use Ubuntu as the base image
FROM ubuntu:latest

# Update the package list and install Coturn
RUN apt-get update && apt-get install -y coturn

# Copy the configuration file to the appropriate directory
COPY turnserver.conf /etc/turnserver.conf

# Run the Coturn server with the configuration file
CMD ["turnserver", "-c", "/etc/turnserver.conf"]

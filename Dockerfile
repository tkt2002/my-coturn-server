# Base image for Coturn
FROM coturn/coturn:latest

# Set environment variables for TURN credentials
ENV TURN_USER=${TURN_USER}
ENV TURN_PASS=${TURN_PASS}

# Copy the turnserver.conf file if you have specific configurations 
# Otherwise, Coturn will start with default configurations
COPY turnserver.conf /etc/turnserver.conf

# Start Coturn with minimal options and environment variables for credentials
CMD turnserver -a -o -v -n --user=${TURN_USER}:${TURN_PASS} --no-cli

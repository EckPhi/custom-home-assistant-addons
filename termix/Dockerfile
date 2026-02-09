# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
FROM ghcr.io/lukegus/termix:latest

# Ensure /data directory exists (Home Assistant persistent storage location)
RUN mkdir -p /data

# Remove the default /app/data directory if it exists
RUN rm -rf /app/data

# Create a symlink from /app/data to /data
# This ensures Termix stores data in Home Assistant's backed-up location
RUN ln -sf /data /app/data

# Set environment variable for port
ENV PORT=8080

# Expose the port
EXPOSE 8080

# The base image should already have the CMD/ENTRYPOINT configured


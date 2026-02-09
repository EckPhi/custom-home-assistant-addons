# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
FROM ghcr.io/lukegus/termix:latest

# Copy rootfs to setup initialization scripts
# The cont-init.d script will handle creating the symlink at runtime
# when /data is available (mounted by Home Assistant)
COPY rootfs /

# Set environment variable for port
ENV PORT=8080

# Expose the port
EXPOSE 8080

# The base image should already have the CMD/ENTRYPOINT configured


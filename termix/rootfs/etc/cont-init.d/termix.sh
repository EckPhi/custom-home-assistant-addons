#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Add-on: Termix Server
# Setup script to configure data persistence
# ==============================================================================

bashio::log.info "Configuring Termix data persistence..."

# At this point, /data is mounted by Home Assistant

# Remove the default /app/data directory if it exists and is not a symlink
if [ -d "/app/data" ] && [ ! -L "/app/data" ]; then
    bashio::log.info "Removing default /app/data directory..."
    rm -rf /app/data
fi

# Create symlink from /app/data to /data if it doesn't already exist
if [ ! -L "/app/data" ]; then
    bashio::log.info "Creating symlink from /app/data to /data for persistence..."
    ln -sf /data /app/data
else
    bashio::log.info "Symlink /app/data -> /data already exists"
fi

bashio::log.info "Data persistence configured successfully"

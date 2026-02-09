# Home Assistant Add-on: Termix Server

## About

This add-on runs a Termix server in Home Assistant with persistent data storage.

Termix is a terminal-based application accessible via web interface on port 8080.

## Installation

Follow these steps to install the add-on:

1. Add this repository to your Home Assistant instance
2. Navigate to Supervisor → Add-on Store
3. Find "Termix Server" in the list and click it
4. Click "INSTALL"

## Configuration

This add-on does not require any configuration. It runs on port 8080 by default.

## How to use

1. Start the add-on
2. Access the Termix web interface at `http://homeassistant.local:8080` (or your Home Assistant IP with port 8080)
3. Your data will be stored in `/data` and will be included in Home Assistant backups

## Data persistence

All Termix data is stored in the `/data` directory, which is:
- Persistent across add-on restarts and updates
- Automatically included in Home Assistant backups
- Mapped to the add-on's data storage

## Auto-Updates

This add-on automatically tracks the upstream Termix Docker image (`ghcr.io/lukegus/termix:latest`). The repository includes an automated workflow that:

- Checks daily for new versions of the upstream Termix image
- Automatically creates a pull request when updates are detected
- Mirrors the upstream version to ensure you have access to the latest features and fixes

The version number is automatically incremented with each upstream update. Check the CHANGELOG.md for details on each release.

## Support

For issues with the Termix application itself, please visit: https://github.com/lukegus/termix
For issues with this add-on, please open an issue in this repository.

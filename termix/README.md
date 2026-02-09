# Home Assistant Add-on: Termix Server

Termix server with persistent data storage.

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]

## About

This add-on runs a Termix server in Home Assistant with persistent data storage that is automatically included in Home Assistant backups.

## Auto-Update

This add-on is configured to automatically check for updates from the upstream Termix Docker image (`ghcr.io/lukegus/termix:latest`). The update workflow runs daily and will automatically create a pull request when a new version of the upstream image is detected.

The update process:
- Checks the upstream Docker image digest daily
- Finds the matching release tag (e.g., `release-1.11.0`) from the upstream registry
- Mirrors the upstream version number to this add-on
- Updates the CHANGELOG with the new version
- Creates a pull request with the changes

**Version Mirroring:** The version number of this add-on directly mirrors the upstream Termix release version for transparency and consistency.

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg

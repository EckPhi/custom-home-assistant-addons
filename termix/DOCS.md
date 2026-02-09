# Home Assistant Add-on: Termix Server

## About

This add-on runs a Termix server in Home Assistant with persistent data storage.

Termix is a terminal-based application accessible via web interface.

## Installation

Follow these steps to install the add-on:

1. Add this repository to your Home Assistant instance
2. Navigate to Supervisor → Add-on Store
3. Find "Termix Server" in the list and click it
4. Click "INSTALL"

## Configuration

The add-on can be configured with the following options:

### Option: `port`

The port on which the Termix web interface will be accessible. Default is `8080`.

```yaml
port: 8080
```

## How to use

1. Start the add-on
2. Access the Termix web interface at `http://homeassistant.local:8080` (or your Home Assistant IP with port 8080)
3. Your data will be stored in `/data` and will be included in Home Assistant backups

## Data persistence

All Termix data is stored in the `/data` directory, which is:
- Persistent across add-on restarts and updates
- Automatically included in Home Assistant backups
- Mapped to the add-on's data storage

## Support

For issues with the Termix application itself, please visit: https://github.com/lukegus/termix
For issues with this add-on, please open an issue in this repository.

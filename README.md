# Offlineimap in a container

Containerized https://github.com/OfflineIMAP/offlineimap

![Docker Image CI](https://github.com/gorootde/offlineimap-docker/workflows/Docker%20Image%20CI/badge.svg)

# Getting Started

1. Create a `offlineimaprc` config. See [this](https://www.offlineimap.org/doc/use_cases.html) page for examples.
2. Run the container `docker run -v /path/to/offlineimaprc:/offlineimap.conf:ro gorootde/offlineimap`

# Usage

To keep the container up and running, it is mandatory to specify a `autorefresh` option in your config. Otherwise the container will exit after the first run is complete.

| Volume            | Description                                                                                   |
| ----------------- | --------------------------------------------------------------------------------------------- |
| /offlineimap.conf | Attach your `.offlineimaprc` config file to this path.                                        |
| /localrepo        |  In case you want to use some persistent storage to do offline synchronization: mount it here |

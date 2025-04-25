# Selenium Grid Configuration

This repository contains the configuration files for setting up a Selenium Grid environment using Docker.

## Prerequisites

- Docker
- Docker Compose

## Configuration

The setup includes:
- Selenium Hub
- Chrome Node
- Firefox Node

## Usage

1. Start the Selenium Grid:
```bash
./scripts/start_grid.sh
```

2. Access the Grid UI:
- Hub: http://localhost:4444/ui
- Chrome Node: http://localhost:5555
- Firefox Node: http://localhost:5556

3. Stop the Grid:
```bash
docker-compose down
```

## Port Configuration

- Hub: 4442, 4443, 4444
- Chrome Node: 5555
- Firefox Node: 5556 
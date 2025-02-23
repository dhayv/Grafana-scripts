# Commands for Grafana Installation & Stress Testing

## User Data Script
```bash
#!/usr/bin/env bash

# Install Grafana
sudo yum install -y https://dl.grafana.com/enterprise/release/grafana-enterprise-11.5.2-1.x86_64.rpm

# Enable/Start Grafana
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
```

## Check Grafana Installation
```bash
sudo systemctl status grafana-server
```

## Install Stress Test Tool
```bash
sudo amazon-linux-extras install epel -y
sudo yum install stress -y
```

## Run Stress Test
```bash
stress --cpu 4 --timeout 120s
```

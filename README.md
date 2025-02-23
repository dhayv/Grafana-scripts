# Grafana EC2 Monitoring Setup

A guide for deploying Grafana on an Amazon EC2 instance and configuring it to monitor system metrics using CloudWatch integration.

For a detailed step-by-step guide, check the accompanying blog post [Dev.to Tutorial](YOUR_DEV.TO_LINK_HERE)

You can find all necessary commands in [commands.sh](commands.sh). These commands complement the detailed tutorial and provide a quick reference.

## Overview

This project demonstrates how to:
- Deploy Grafana on an EC2 instance
- Configure CloudWatch as a data source
- Create basic monitoring dashboards
- Perform stress testing to visualize metric changes

## Prerequisites

- AWS Account with permissions to:
  - Create IAM roles
  - Launch EC2 instances
  - Access CloudWatch
- Basic understanding of AWS services
- t2.micro instance (Free tier eligible)

## Quick Start

1. Create IAM role with `AmazonGrafanaCloudWatchAccess` policy
2. Launch EC2 instance with provided user data script
3. Configure security group for Grafana access (port 3000)
4. Access Grafana UI and set up CloudWatch data source
5. Create dashboard and configure metrics
6. Run stress tests to visualize system performance

## Quick Reference Commands

Key commands used in this setup are documented in `commands.sh`. This includes:
- Installation commands
- Service verification
- Stress testing
- System checks

## Security Considerations

- Update default admin credentials immediately
- Restrict security group access to specific IP ranges
- Consider using VPN or AWS VPC endpoints for production environments
- Use HTTPS with ALB for additional security in production

## Metrics Monitored

- CPU Utilization
- Network I/O
- Disk Operations
- Instance Health Status
- Memory Usage (requires CloudWatch agent)

## Resources

- [Grafana Documentation](https://grafana.com/docs/)
- [AWS CloudWatch Documentation](https://docs.aws.amazon.com/cloudwatch/)
- [EC2 Instance Metrics](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/viewing_metrics_with_cloudwatch.html)

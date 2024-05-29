#!/bin/bash
# Check the status of a service

SERVICE_NAME=$1

systemctl status "$SERVICE_NAME"


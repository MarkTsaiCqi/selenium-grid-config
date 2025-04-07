#!/bin/bash

# 确保脚本在出错时停止执行
set -e

echo "Starting Selenium Grid..."
docker-compose up -d

echo "Waiting for Selenium Grid to be ready..."
sleep 10

echo "Selenium Grid is running at:"
echo "Hub: http://localhost:4444"
echo "Chrome Node: http://localhost:5555"
echo "Firefox Node: http://localhost:5556" 
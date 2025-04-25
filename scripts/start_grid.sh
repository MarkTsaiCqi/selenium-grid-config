#!/bin/bash

set -e

echo "🚀 正在啟動 Selenium Grid..."
docker-compose up -d

echo "⏳ 等待 Grid 初始化中..."
sleep 10

# 檢查 Hub 狀態
if curl -s http://localhost:4444/wd/hub/status | grep -q 'ok'; then
  echo "✅ Selenium Hub 啟動成功！"
else
  echo "❌ 無法連線到 Selenium Hub，請檢查 docker 狀態。"
  exit 1
fi

echo ""
echo "📍 Selenium Grid 狀態："
echo "Hub         ➜ http://localhost:4444"
echo "Chrome Node ➜ http://localhost:5555"
echo "Firefox Node➜ http://localhost:5556"

#!/bin/bash
# 清理 APT 缓存和过时的包
sudo apt clean
sudo apt autoremove -y
sudo apt autoclean
# 删除临时文件
rm -rf ~/.cache/thumbnails/*
rm -rf ~/.cache/*
# 清理系统日志
sudo journalctl --vacuum-time=7d

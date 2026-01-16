---
title: Chrome 计时插件
description: 浏览器标签页计时器，追踪你在不同网站的时间消耗
tags:
  - project
  - Chrome Extension
  - 时间管理
status: shipped
date: 2024-06-01
updated: 2024-11-15
links:
  github: https://github.com/licheng/chrome-timer
---

## 关于这个项目

一个轻量的 Chrome 扩展，自动统计你在各个网站的停留时间，帮助你了解自己的上网习惯。

**核心功能**：
- 自动追踪各网站停留时间
- 按日/周/月统计网页使用时间
- 设置时间提醒
- 数据本地存储

## 技术要点

- Chrome Extension Manifest V3
- Background Service Worker
- Chrome Storage API
- 轻量 UI（原生 HTML/CSS/JS）

## 我学到什么

1. **Manifest V3 迁移**：Service Worker 生命周期与传统 Background Page 有很大不同
2. **后台脚本限制**：V3 的 Service Worker 会被浏览器休眠，需要合理设计持久化策略
3. **权限最小化**：只申请必要权限，减少用户顾虑

## 链接

- 💻 [GitHub 源码](https://github.com/licheng/chrome-timer)

> 这个项目目前没有发布到 Chrome Web Store，仅供个人使用和学习。

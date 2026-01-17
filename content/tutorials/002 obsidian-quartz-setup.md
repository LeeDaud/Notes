---
title: 用 Obsidian + Quartz 搭建数字花园
description: 从零开始，将 Obsidian 笔记发布为在线数字花园的完整教程
tags:
  - Obsidian
  - Quartz
  - 数字花园
  - 教程
date: 2026-01-17
difficulty: beginner
estimated_time: 30min
---
## 什么是数字花园？

数字花园是一种介于博客和 Wiki 之间的内容形式。它不强调时间顺序，而是强调知识之间的连接。你可以随时更新、修改、重构你的笔记。

## 为什么选择 Obsidian + Quartz？

- **Obsidian**：本地优先的 Markdown 笔记软件，支持双向链接
- **Quartz**：专为 Obsidian 设计的静态网站生成器，完美支持 `[[wikilink]]` 语法

## 前置要求

- Node.js 18+
- Git
- 一个 GitHub 账号
- Obsidian（可选，任何 Markdown 编辑器都可以）

## 步骤

### 1. 初始化项目

```bash
# 创建项目目录
mkdir my-garden && cd my-garden

# 克隆 Quartz
git clone https://github.com/jackyzha0/quartz.git .
npm install
```

### 2. 配置 Quartz

编辑 `quartz.config.ts`：

```typescript
const config: QuartzConfig = {
  configuration: {
    pageTitle: "我的数字花园",
    locale: "zh-CN",
    baseUrl: "your-domain.com",
    // ...
  },
}
```

### 3. 添加内容

将你的 Markdown 笔记放入 `content/` 目录：

```
content/
  index.md          # 首页
  notes/            # 笔记
  projects/         # 项目
  tutorials/        # 教程
```

### 4. 本地预览

```bash
npx quartz build --serve
```

访问 `http://localhost:8080` 预览效果。

### 5. 部署到 Netlify

1. 将代码推送到 GitHub
2. 在 Netlify 新建站点，连接 GitHub 仓库
3. 设置构建命令：`npx quartz build --directory content`
4. 设置发布目录：`public`

## 常见问题

### Q: 页面为空白？

检查 `.gitignore`，确保 `content/` 目录没有被忽略。

### Q: 双向链接不工作？

确保使用 `[[文件名]]` 格式，而不是标准 Markdown 链接。

### Q: 中文显示有问题？

在 `quartz.config.ts` 中设置 `locale: "zh-CN"`。

## 进阶

- 自定义主题颜色
- 添加评论系统
- 配置 GitHub Actions 自动部署

---

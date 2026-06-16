#!/bin/bash

# GitHub Pages 自动部署脚本
# 使用方法: chmod +x deploy.sh && ./deploy.sh

echo "🚀 开始部署到GitHub Pages..."
echo ""

# 检查是否已初始化Git
if [ ! -d ".git" ]; then
    echo "📦 初始化Git仓库..."
    git init
fi

# 添加所有文件
echo "📝 添加文件..."
git add .

# 提交更改
echo "💾 提交更改..."
read -p "请输入提交信息 (默认: Update presentations): " commit_message
commit_message=${commit_message:-"Update presentations"}
git commit -m "$commit_message"

# 检查是否已配置远程仓库
if ! git remote | grep -q "origin"; then
    echo ""
    echo "🔗 配置GitHub远程仓库"
    echo "请输入你的GitHub仓库地址"
    echo "格式: https://github.com/用户名/仓库名.git"
    read -p "仓库地址: " repo_url
    
    if [ -z "$repo_url" ]; then
        echo "❌ 错误: 仓库地址不能为空"
        exit 1
    fi
    
    git remote add origin "$repo_url"
else
    echo "✅ 远程仓库已配置"
fi

# 推送到GitHub
echo ""
echo "⬆️  推送到GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ 推送成功!"
echo ""
echo "🎉 接下来请按照以下步骤启用GitHub Pages:"
echo ""
echo "1️⃣  访问你的GitHub仓库页面"
echo "2️⃣  点击 'Settings' (设置)"
echo "3️⃣  左侧菜单找到 'Pages'"
echo "4️⃣  在 'Source' 选择:"
echo "    - Branch: main"
echo "    - Folder: / (root)"
echo "5️⃣  点击 'Save'"
echo ""
echo "⏱️  等待1-2分钟后,你的网站将可以通过以下地址访问:"
echo "https://你的用户名.github.io/仓库名/"
echo ""
echo "📖 详细教程请查看 README.md"
echo ""

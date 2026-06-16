# 🚀 GitHub Pages 部署完整教程

## 📋 准备工作

### 1. 注册GitHub账号(如果还没有)

1. 访问 [github.com](https://github.com)
2. 点击 "Sign up"
3. 填写邮箱、密码、用户名
4. 验证邮箱
5. 完成!

**记住你的用户名**,比如: `zhangxin123`

---

## 🎯 部署方法(选择一种)

### 方法一: 使用自动脚本(最简单) ⭐推荐

#### 步骤1: 打开终端

```bash
# Mac用户
# 在当前项目目录下,右键 → "新建位于文件夹的终端窗口"
# 或者在终端中 cd 到项目目录

cd /Users/zhangxin/PyCharmMiscProject
```

#### 步骤2: 运行部署脚本

```bash
# 给脚本执行权限
chmod +x deploy.sh

# 运行脚本
./deploy.sh
```

#### 步骤3: 按提示操作

脚本会问你:
1. 提交信息(直接回车用默认的)
2. GitHub仓库地址

**如何获取仓库地址?**

1. 登录GitHub
2. 点击右上角 "+" → "New repository"
3. 填写:
   - Repository name: `presentations` (或任意名字)
   - 选择 **Public**
   - ✅ 勾选 "Add a README file"
4. 点击 "Create repository"
5. 复制地址,类似: `https://github.com/zhangxin123/presentations.git`

#### 步骤4: 输入地址并推送

把复制的地址粘贴到终端,回车

等待上传完成!

---

### 方法二: 手动Git命令(适合有Git基础的)

#### 步骤1: 初始化Git仓库

```bash
cd /Users/zhangxin/PyCharmMiscProject
git init
```

#### 步骤2: 添加并提交文件

```bash
git add .
git commit -m "Initial commit: Add HTML presentations"
```

#### 步骤3: 关联GitHub仓库

```bash
# 替换成你的仓库地址
git remote add origin https://github.com/你的用户名/仓库名.git
```

#### 步骤4: 推送到GitHub

```bash
git branch -M main
git push -u origin main
```

如果提示需要登录:
- 会弹出浏览器让你登录GitHub
- 授权后自动完成推送

---

### 方法三: 网页上传(无需Git命令)

#### 步骤1: 创建GitHub仓库

1. 访问 [github.com](https://github.com)
2. 点击右上角 "+" → "New repository"
3. 填写:
   - Repository name: `presentations`
   - Description: `HTML演示文稿合集`
   - 选择 **Public**
   - ✅ 勾选 "Initialize this repository with a README"
4. 点击 "Create repository"

#### 步骤2: 上传文件

1. 在仓库页面,点击 "Add file" → "Upload files"
2. 从文件夹拖拽这些文件:
   - `index.html`
   - `presentation.html`
   - `presentation_business.html`
   - `presentation_daily.html`
   - `presentation_interactive.html`
   - `presentation_editable_example.html`
   - `notification_confirmation.html`
   - `README.md`
   - `修改指南.md`
3. 点击 "Commit changes"

---

## ⚙️ 启用GitHub Pages

无论使用哪种方法上传,都需要这一步!

### 步骤1: 进入设置

在你的GitHub仓库页面:
1. 点击顶部的 **"Settings"** (设置)标签

### 步骤2: 找到Pages设置

1. 左侧菜单向下滚动
2. 找到并点击 **"Pages"**

### 步骤3: 配置Pages

在 "Build and deployment" 部分:

**Source**: 
- 选择 "Deploy from a branch"

**Branch**:
- 第一个下拉框: 选择 `main` (或 `master`)
- 第二个下拉框: 选择 `/ (root)`

点击 **"Save"** 按钮

### 步骤4: 等待部署

你会看到:
```
Your site is live at https://你的用户名.github.io/仓库名/
```

⏱️ 通常需要1-2分钟生效

---

## 🎉 完成!访问你的网站

部署成功后,你可以通过以下地址访问:

```
https://你的用户名.github.io/仓库名/
```

例如:
```
https://zhangxin123.github.io/presentations/
```

### 在手机上查看

1. 复制链接
2. 在微信中发送给自己或朋友
3. 点击链接即可在手机浏览器中查看

---

## 🔧 更新内容

### 修改文件后如何重新部署?

#### 使用命令行:
```bash
git add .
git commit -m "Update content"
git push
```

#### 使用网页:
1. 在GitHub仓库中点击要修改的文件
2. 点击右上角的铅笔图标 ✏️
3. 修改内容
4. 滚动到底部,点击 "Commit changes"

GitHub Pages会自动更新,通常1-2分钟后生效。

---

## ❓ 常见问题

### Q1: 推送时提示需要认证?

**解决方法:**
1. 使用HTTPS方式(推荐):
   ```bash
   git remote set-url origin https://github.com/用户名/仓库名.git
   ```
2. 推送时会弹出浏览器登录GitHub

### Q2: Pages显示404错误?

**可能原因:**
1. 文件没有正确上传
2. Pages设置不正确

**解决方法:**
1. 检查仓库中是否有 `index.html` 文件
2. 确认Pages设置中选择了正确的分支和根目录
3. 等待2-3分钟再刷新

### Q3: 修改后网站没有更新?

**解决方法:**
1. 清除浏览器缓存(Ctrl+Shift+Delete)
2. 使用无痕模式访问
3. 在URL后加 `?v=1` 强制刷新

### Q4: 手机访问很慢?

**优化建议:**
1. GitHub在国内访问可能较慢
2. 可以考虑使用Gitee Pages(国内)
3. 或者使用CDN加速

### Q5: 想让网址更好看?

可以自定义域名:
1. 购买一个域名
2. 在Pages设置中添加自定义域名
3. 按照提示配置DNS

---

## 🌟 高级技巧

### 添加网站图标(Favicon)

1. 准备一个 `favicon.ico` 文件
2. 上传到仓库根目录
3. 在每个HTML的 `<head>` 中添加:
   ```html
   <link rel="icon" href="favicon.ico">
   ```

### 添加分享卡片

在 `<head>` 中添加:
```html
<meta property="og:title" content="HTML演示文稿合集">
<meta property="og:description" content="精美的在线演示文稿模板">
<meta property="og:image" content="preview.png">
```

### 统计访问量

可以使用免费的统计服务:
- Google Analytics
- 百度统计
- Cloudfare Web Analytics

---

## 📊 其他部署选项

### 选项1: Netlify(更简单)

1. 访问 [netlify.com](https://netlify.com)
2. 用GitHub账号登录
3. 拖拽文件夹到页面
4. 立即获得链接!

### 选项2: Vercel

1. 访问 [vercel.com](https://vercel.com)
2. 导入GitHub仓库
3. 自动部署

### 选项3: Gitee Pages(国内速度快)

1. 注册 [gitee.com](https://gitee.com)
2. 导入GitHub仓库
3. 开启Gitee Pages服务

---

## 💡 小贴士

1. **保持仓库公开**: GitHub Pages只对公开仓库免费
2. **定期备份**: 虽然GitHub很可靠,但本地也要保留备份
3. **测试链接**: 部署后在多个设备上测试
4. **优化图片**: 如果添加图片,先压缩以减少加载时间
5. **使用HTTPS**: GitHub Pages默认启用HTTPS,更安全

---

## 🆘 需要帮助?

如果遇到问题:

1. **查看GitHub Pages文档**: https://pages.github.com/
2. **搜索GitHub Issues**: 可能有人遇到过相同问题
3. **提Issue**: 在这个仓库提问

---

**祝你部署顺利!🎉**

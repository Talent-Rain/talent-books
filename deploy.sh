#!/usr/bin/env sh
###
 # @Author: your name
 # @Date: 2021-07-25 16:44:07
 # @LastEditTime: 2021-07-25 16:48:15
 # @LastEditors: your name
 # @Description: In User Settings Edit
 # @FilePath: /talent-books/deploy.sh
### 

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
git push -f https://github.com/Talent-Rain/Talent-Rain.github.io.git master


cd -

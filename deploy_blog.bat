@echo off
chcp 65001 >nul
@echo 正在清理·······
call hexo clean || echo errors
if errorlevel 1 pause
@echo 生成静态文件.....
call hexo g
@echo 部署netlify·····
call hexo deploy
call git add .
call git commit -m 'update'
call git push -f origin main
pause
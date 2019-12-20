```bash
git config --global user.name "chuqq"
git config --global user.email "chuqingq@qq.com"

git config --global credential.helper store

git config --global core.autocrlf false
git config --global core.saftcrlf true

git config --add core.filemode false

git config --global http.proxy socks5://127.0.0.1:1080
git config --global https.proxy socks5://127.0.0.1:1080

git config --global --unset http.proxy
git config --global --unset https.proxy

# 统计某个时间段提交的代码量
git log --since=2018-01-01 --until=2019-12-31 --author="yourname" --pretty=tformat: --numstat | awk '{ add += $1 ; subs += $2 ; loc += $1 - $2 } END { printf "added lines: %s removed lines : %s total lines: %s\n",add,subs,loc }' -
```

# 更新 dep
sudo sed -i "s@http://.*archive.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list
sudo sed -i "s@http://.*security.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list
apt-get update
# 安装 ffmpeg
echo Y | apt-get install ffmpeg

# 安装 tinyproxy，轻量级代理
echo Y | apt-get install tinyproxy
sed -i 's/Port 8888/Port 9991/g' /etc/tinyproxy/tinyproxy.conf
# 启动 tinyproxy
/etc/init.d/tinyproxy restart

# 获取jupyter 秘钥 8888 端口
jupyter notebook list > ~/work/notebook.txt

# 安装 frp 
if test -f  ~/work/frp/frpc
  then
    echo "存在frp"
  else wget https://github.com/fatedier/frp/releases/download/v0.30.0/frp_0.30.0_linux_amd64.tar.gz && tar xzvf frp_0.30.0_linux_amd64.tar.gz && mv frp_0.30.0_linux_amd64 frp && rm frp_0.30.0_linux_amd64.tar.gz
fi

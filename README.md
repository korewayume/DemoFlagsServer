# DemoFlagsServer
forked from [fluentpython/example-code](https://github.com/fluentpython/example-code/tree/master/17-futures/countries)

# 部署方式
- 需要启动`docker`服务，并且安装`docker-compose`工具

```bash
git clone https://github.com/korewayume/DemoFlagsServer.git
cd DemoFlagsServer/containers
unzip flags.zip
docker-compose up -d

```
部署完成会启动三个容器
Nginx Vaurien-DELAY Vaurien-ERROR

# 测试方式
将`test_scripts/flags2_common.py`代码中的`vmware`替换为docker daemon宿主机的hostname或者ip

```python
SERVERS = {
    'REMOTE': 'http://flupy.org/data/flags',
    'LOCAL':  'http://vmware:8001/flags',
    'DELAY':  'http://vmware:8002/flags',
    'ERROR':  'http://vmware:8003/flags',
}
```

```bash
python3 test_scripts/flags2_threadpool.py -s LOCAL 
python3 test_scripts/flags2_threadpool.py -s DELAY 
python3 test_scripts/flags2_threadpool.py -s ERROR 
```
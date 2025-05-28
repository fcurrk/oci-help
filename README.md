# 甲骨文实例抢购教程

本脚本来源于 https://github.com/lemoex/oci-help
感谢分享源码.

## 
- 如果需要在本地电脑运行该程序，根据自己电脑的CPU架构类型，打开下面的 `下载地址` 下载对应的文件即可。如果需要在服务器上运行该程序，那么根据服务器的CPU架构类型选择对应的文件下载到服务器即可。

- 下载完成后解压压缩包，可以得到可执行程序 (Windows系统: `oci-help.exe` , 其他操作系统: `oci-help` ) 和 配置文件 `oci-help.ini` 。


> 下载地址: https://github.com/fcurrk/oci-help/releases/latest


## 获取配置信息
![image](https://github.com/fcurrk/oci-help/blob/main/doc/1.png)
![image](https://github.com/fcurrk/oci-help/blob/main/doc/2.png)
![image](https://github.com/fcurrk/oci-help/blob/main/doc/3.png)
![image](https://github.com/fcurrk/oci-help/blob/main/doc/4.png)
![image](https://github.com/fcurrk/oci-help/blob/main/doc/5.png)
![image](https://github.com/fcurrk/oci-help/blob/main/doc/6.png)


## 编辑配置文件
用文本编辑器打开在第一步获取到的 `oci-help.ini` 文件，进行如下配置:

![image](https://github.com/fcurrk/oci-help/blob/main/doc/7.png)
![image](https://github.com/fcurrk/oci-help/blob/main/doc/8.png)

availabilityDomain可用域名称可为空，怕麻烦的可以不填.

retry为实例失败后重试次数，设置为-1为一直重试直到成功。


## Telegram 消息提醒配置
![image](https://github.com/fcurrk/oci-help/blob/main/doc/9.png)

> BotFather: https://t.me/BotFather

/newbot 创建机器人，按照提示为机器人设置名字，然后/token 提取token

> IDBot: https://t.me/myidbot

/getid 获得自己的数字id

## WX 消息提醒配置
微信推送支持server酱及pushplus，以下两项任一项为空则不启用微信推送.

**例如：**

wx_web=server
wx_token=12345677
wx_openid=user01,user02

**wx_web可选设置server或pushplus**

server使用server酱推送：

server酱注册申请地址：[https://sct.ftqq.com](https://sct.ftqq.com)

pushplus使用server酱推送：

pushplus注册申请地址：[http://www.pushplus.plus](http://www.pushplus.plus)

**wx_token为相应key或token**，在相应注册页面获取.

wx_openid为server酱推送指定信息接收人，多人用,分隔，仅支持测试号和企业微信应用消息通道，为空则默认

server酱里指定的所有用户都能接收到.

## 运行程序
```bash
# 前台运行程序
./oci-help

# 前台运行需要一直开着终端窗口，可以在 Screen 中运行程序，以实现断开终端窗口后一直运行。
# 创建 Screen 终端
screen -S oci-help 
# 在 Screen 中运行程序
./oci-help
# 离开 Screen 终端
按下 Ctrl 键不松，依次按字母 A 键和 D 键。或者直接关闭终端窗口也可以。
# 查看已创建的 Screen 终端
screen -ls
# 重新连接 Screen 终端
screen -r oci-help
```

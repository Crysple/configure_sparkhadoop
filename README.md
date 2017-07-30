#!免责声明balablabalabala纯属玩玩有什么问题概不负责。。。。
1.Create three instances first
2.Modify the /etc/hosts according to the lab guide
3.configure .SSH according to the lab guide
//就是自己配置ssh和host,host用私有ip配置

4.运行source main.sh
5.运行source .bash_profile
//下面就是原来的步骤
6.hadoop namenode -format （失败就返回5）
7.到hadoop文件夹里运行 source sbin/start-all.sh    输入jps看进程，是否成功
8.到spark文件夹里面运行 source sbin/start-all.sh    输入jps看是否成功

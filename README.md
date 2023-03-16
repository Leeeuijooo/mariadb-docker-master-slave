## mariadb-docker-master-slave
***
### 1. Docker Install
```shell
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh
```
### 2. docker-compose Install
```shell
$ sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
$ sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
$ docker-compose -v

docker-compose version 1.27.4, build 40524192
```
### 3. docker-compose.yml
```
- ./master/data:/var/lib/mysql: : log & Index Volume Mount
- ./master/config/:/etc/mysql/conf.d : my.cnf (Reference)
- ./master/mysql-init-files/:/docker-entrypoint-initdb.d/ : query.sql 으로 쿼리미리 날려 설정 → 사용안함! shell 파일에서 쿼리 날릴 예정
```
### 4. Start & Destroy
```shell
$ sh msdb.sh

$ sh rm_msdb.sh
```

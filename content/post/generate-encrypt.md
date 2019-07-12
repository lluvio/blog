---
title: "数字证书原理及生成"
description: "Description of the post"
date: 2018-10-24
---

了解数字的原理及生成，对前端安全领域有一定的认识，HTTPS 是如何保证 CIA ，即保密性 （ Confidentiality）、完整性 （Integrity）、真实性（Authentication）。

<!--more-->

## 1、基础知识



### 1.1、公钥密码体制(public-key cryptography)

公钥密码体制分为三个部分，公钥、私钥、加密解密算法，它的加密解密过程如下：

- 加密：通过加密算法和公钥对内容(或者说明文)进行加密，得到密文。加密过程需要用到公钥。
- 解密：通过解密算法和私钥对密文进行解密，得到明文。解密过程需要用到解密算法和私钥。注意，由公钥加密的内容，只能由私钥进行解密，也就是说，由公钥加密的内容，如果不知道私钥，是无法解密的。

公钥密码体制的公钥和算法都是公开的(这是为什么叫公钥密码体制的原因)，私钥是保密的。大家都以使用公钥进行加密，但是只有私钥的持有者才能解密。在实际的使用中，有需要的人会生成一对公钥和私钥，把公钥发布出去给别人使用，自己保留私钥。

 

### 1.2、签名

我们说加密，是指对某个内容加密，加密后的内容还可以通过解密进行还原。 比如我们把一封邮件进行加密，加密后的内容在网络上进行传输，接收者在收到后，通过解密可以还原邮件的真实内容。

这里主要解释一下签名，<u>签名就是在**信息**的后面再加上一段内容，可以证明**信息**没有被修改过</u>，怎么样可以达到这个效果呢<u>？一般是对**信息**做一个hash计算得到一个hash值</u>，注意，这个过程是不可逆的，也就是说无法通过hash值得出原来的**信息**内容。在把**信息**发送出去时，把这个hash值加密后做为一个签名和**信息**一起发出去。 接收方在收到**信息**后，会重新计算**信息**的hash值，并和**信息**所附带的hash值(解密后)进行对比，如果一致，就说明信息的内容没有被修改过，因为这里hash计算可以保证不同的内容一定会得到不同的hash值，所以只要内容一被修改，根据**信息**内容计算的hash值就会变化。当然，不怀好意的人也可以修改**信息**内容的同时也修改hash值，从而让它们可以相匹配，为了防止这种情况，hash值一般都会加密后(也就是签名)再和**信息**一起发送，以保证这个hash值不被修改。至于如何让别人可以解密这个签名，这个过程涉及到数字证书等概念，我们后面在说到数字证书时再详细说明，这里您先只需先理解签名的这个概念。

### 1.3、RSA加密

公钥加密的内容私钥可以解密，反之私钥加密的内容公钥也能解密



## 2、为什么要用HTTPS

由于HTTP是明文传输，使用HTTPS可以有效的防止HTTP产生的监听、流量劫持等问题。相信大家都经历过百度搜索被插入 运营商广告的的情况。Https主要解决以下三个问题，这里不作拓展。

- **数据的保密性**
- **数据的完整性** （内容HASH后加密，防止被篡改）
- **数据有效性** （分布式拒绝[服务](https://baike.baidu.com/item/%E6%9C%8D%E5%8A%A1)(DDoS:Distributed Denial of Service）



硬性要求：

1. Google 已调整搜索引擎[算法](http://lib.csdn.net/base/datastructure)，让采用 HTTPS 的网站在搜索中排名更靠前
2. 从 2017 年开始，Chrome 浏览器已把采用 HTTP 协议的网站标记为不安全网站
3. 苹果要求 2017 年 App Store 中的所有应用都必须使用 HTTPS 加密连接
4. 当前国内炒的很火热的[微信](http://lib.csdn.net/base/wechat)小程序也要求必须使用 HTTPS 协议
5. 新一代的 HTTP/2 协议的支持需以 HTTPS 为基础



### 2.1、原理

HTTPS 主要用到了 RSA 加密技术（对称加密），公钥给认证机构，私钥保存在服务端，用户访问站点时，会从证书机构获取公钥



总结一下，RSA加密算法在这个通信过程中所起到的作用主要有两个：

- **因为私钥只有“服务器”拥有，因此“客户”可以通过判断对方是否有私钥来判断对方是否是“服务器”。**
- **客户端通过RSA的掩护，安全的和服务器商量好一个对称加密算法和密钥来保证后面通信过程内容的安全。**



为什么后面用对称加密呢，因为服务端私钥加密的信息，可以被公钥解密。至于对称密钥怎么来的呢。服务器通过hello过程中的三个随机码计算出本次会话的『会话密钥(session secret)』，用来做对称密钥

![](/images/encrypt-https-1.png)

### 2.2、性能问题

现在处理不断发展，HTTPS带来的加密损耗几乎可以忽略不计



## 3、使用 Let's Encript 生成证书

Let's Encript 是一个免费的，自动的，公开的认证机构（CA），为公众的利益而运行。这是由[互联网安全研究组（ISRG）](https://letsencrypt.org/isrg/)提供的服务。同时它使用的是 [ACME](https://github.com/ietf-wg-acme/acme/) (Automated Certificate Management Environment) 协议，可以自动化管理证书



```bash
# 创建文件夹，存放各种密钥
mkdir -p www/challenges
mkdir ssl && cd ssl

# 创建一个 RSA 私钥用于 Let's Encrypt 识别你的身份
# CA 在签发 DV（Domain Validation）证书时，需要验证域名所有权。传统 CA 的验证方式一般是往 admin@yoursite.com 发验证邮件，而 Let's Encrypt 是在你的服务器上生成一个随机验证文件，再通过创建 CSR 时指定的域名访问，如果可以访问则表明你对这个域名有控制权
# 这里的随机是 account.key
openssl genrsa 4096 > account.key

# 创建 RSA 私钥
openssl genrsa 4096 > domain.key

# 生成 域名证书，一个证书可以包含 100 个域名，注意，这里的域名必须在同一个顶级域名下
openssl req -new -sha256 -key domain.key -subj "/" -reqexts SAN -config <(cat /etc/ssl/openssl.cnf <(printf "[SAN]\nsubjectAltName=DNS:yoursite.com,DNS:api.yoursite.com,DNS:wx.yoursite.com,DNS:file.yoursite.cn")) > domain.csr
```

接下来我们要配置 nginx

```nginx
server {
    listen 80;
    server_name yoursite.com api.yoursite.cn ws.yoursite.cn file.yoursite.cn;
	
  	# 告知 Let's Enscript 我们拥有服务器的使用权
    location ^~ /.well-known/acme-challenge/ {
        alias /home/xxx/www/challenges/;
        try_files $uri =404;
    }

    location / {
	root /var/www/html;
	index index.html index.nginx-debian.html;
    }
}
```

使用 acme-tiny，它是用于申请 Let's Enscript 轻量级的脚本

```bash
# 下载 acme-tiny
wget https://raw.githubusercontent.com/diafygi/acme-tiny/master/acme_tiny.py

# 使用 Let'enscript 给域名证书签名，并拿到签名后的域名证书
# notice: 我们的域名在国外可能无法被解析，这里可能会存在dns解析错误，可以尝试换着域名解析商再进行以下步骤
python acme_tiny.py --account-key ./account.key --csr ./domain.csr --acme-dir /home/xxx/www/challenges/ > ./signed.crt

# 下载中间证书，并中间证书和网站证书合在一起
wget -O - https://letsencrypt.org/certs/lets-encrypt-x3-cross-signed.pem > intermediate.pem
cat signed.crt intermediate.pem > chained.pem
```



最终生成的文件如下

```bash
$ ls
account.key  acme_tiny.py  chained.pem	domain.csr  domain.key	intermediate.pem  signed.crt
```



Let's encript 无法同时为多个顶级域名生成证书，会遇到如下错误，此时需要新的 `domain.key` 以及 `account.key`

```
ssl.CertificateError: hostname 'example1.com' doesn't match 'example2.com'
```



### 3.1、Nginx配置

最终的 nginx 配置可以优化如下

```nginx
# 切记，主机防火墙
server {
  listen 80;
  listen 443 ssl;
  server_name lluvio.cn;
  index index.html;
  ssl_certificate cert/2311607_lluvio.cn.pem; #你的证书的位置
  ssl_certificate_key cert/2311607_lluvio.cn.key; #你的证书key的位置
  root /var/www/wd-front/dist;
  location /api/ {
      # rewrite ^.+api/?(.*)$ /$1 break; # break代表匹配一个之后停止匹配。
      proxy_set_header Host $host;
      proxy_pass  http://0.0.0.0:3001; # 注意，proxy_pass 地址后面不可以手动添加地址，否则无效。
  }
  if ($server_port = 80 ) { # 大部分用户输入的网站默认走的是 80 端口，我们这里要 rewrite 到 https 地址
     return 301 https://$host$request_uri;
  }
}
```



### 3.2、有效期

Let's Encrypt 签发的证书有效期只有90天，甚至希望缩短到60天。有效期越短，泄密后可供监控的窗口就越短。为了支撑这么短的有效期，就必须自动化验证和签发。因为自动化了，长远而言，维护反而比手动申请再安装要简单。其实是这也是为了鼓励用户采用自动化部署方案。这里自动更新的脚本如下，可以结合 crontab 每隔一段时间进行更新 

```bash
#!/bin/bash
cd /home/xxx/www/ssl/

python acme_tiny.py --account-key account.key --csr domain.csr --acme-dir /home/xxx/www/challenges/ > signed.crt || exit

wget -O - https://letsencrypt.org/certs/lets-encrypt-x3-cross-signed.pem > intermediate.pem

cat signed.crt intermediate.pem > chained.pem

systemctl reload nginx
```

## 备注

* 主机防火墙请打开 443 端口
* [Let's Encrypt，免费好用的 HTTPS 证书](https://imququ.com/post/letsencrypt-certificate.html)


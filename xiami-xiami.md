---
title: "虾米、虾米"
description: "Description of the post"
date: 2018-01-02
---

本文主要描述破解虾米音乐的过程

<!--more-->


## 抓包分析

看到源码有迹可循，我们再来看看客户端发起的网络请求有什么内容。因为我们主要是突破下载限制，所以只要看看点击下载音乐的时候会发出什么请求内容。这里我点击下载我喜爱的音乐 <To The Moon>，注意，这是首免费音乐。通过 Charles 我们可以清晰的看到 在虾米的二级域名地址下出现一条请求，内容如下

```js
{
	"api": "mtop.alimusic.music.songservice.getsongs",
	"data": {
		"data": {
			"songs": [{
				"albumId": 488119,
				"albumLanguage": "纯音乐",
				"albumLogo": "http://pic.xiami.net/images/album/img1/101201/4881191474876940.jpg",
				"albumLogoS": "http://pic.xiami.net/images/album/img1/101201/4881191474876940.jpg@1e_1c_0i_1o_100Q_225w_225h.webp",
				"albumName": "To the Moon (Original Soundtrack)",
				"albumSongCount": 31,
				"albumSubName": "去月球",
				"arrangement": "",
				"artistAlbumCount": 5,
				"artistAlias": "高瞰 / Kan \"Reives\" Gao",
				"artistId": 101201,
				"artistLogo": "http://pic.xiami.net/images/artistlogo/57/13729288146557.jpg",
				"artistName": "Kan R. Gao",
				"bakSongId": 0,
				"bizTags": ["LOSSLESS", "X_FREE", "A_KB61"],
				"cdSerial": 1,
				"composer": "",
				"downloadCount": false,
				"exclusive": false,
				"flag": 65,
				"gmtCreate": 1405042306000,
				"length": 178023,
				"listenFiles": [{
					"expire": 1514892837675,
					"fileSize": 31417782,
					"format": "wav",
					"listenFile": "http://m740.xiami.net/201/101201/488119/1770742208_1512322229271.wav?auth_key=1515466800-0-0-7d1af74af86c0c440a8a006fe329a208",
					"playVolume": 89.0,
					"quality": "s"
				}, {
					"expire": 1514892837674,
					"fileSize": 732445,
					"format": "m4a",
					"listenFile": "http://m32.xiami.net/201/101201/488119/1770742208_1512322229271.m4a?auth_key=1515466800-0-0-4fcc45a28491b2e534a43b240d897dd5",
					"playVolume": 89.0,
					"quality": "e"
				}, {
					"expire": 1514892837674,
					"fileSize": 1447561,
					"format": "m4a",
					"listenFile": "http://m64.xiami.net/201/101201/488119/1770742208_1512322229271.m4a?auth_key=1515466800-0-0-4fcc45a28491b2e534a43b240d897dd5",
					"playVolume": 89.0,
					"quality": "f"
				}, {
					"expire": 1514892837675,
					"fileSize": 7127248,
					"format": "mp3",
					"listenFile": "http://m320.xiami.net/201/101201/488119/1770742208_1512322229271.mp3?auth_key=1515466800-0-0-c450f22705979fadba190b89f955564a",
					"playVolume": 89.0,
					"quality": "h"
				}, {
					"expire": 1514892837675,
					"fileSize": 2850898,
					"format": "mp3",
					"listenFile": "http://m128.xiami.net/201/101201/488119/1770742208_1512322229271.mp3?auth_key=1515466800-0-0-c450f22705979fadba190b89f955564a",
					"playVolume": 89.0,
					"quality": "l"
				}],
				"lyricInfo": {
					"isOfficial": false,
					"lyricFile": "http://img.xiami.net/lyric/8/1770742208_1477686804738_5001.lrc",
					"lyricId": 4126693,
					"lyricType": 2
				},
				"musicType": 0,
				"mvId": "",
				"needPayFlag": 0,
				"newSubName": "",
				"offline": false,
				"offlineType": 0,
				"originOffline": false,
				"pace": 0,
				"panFlag": 0,
				"pinyin": "For River - Piano (Sarah & Tommy's Version)",
				"purviewRoleVOs": [{
					"filesize": 732445,
					"isExist": true,
					"operationVOs": [{
						"needPay": false,
						"needVip": false,
						"purpose": 1,
						"upgradeRole": 0
					}, {
						"needPay": false,
						"needVip": false,
						"purpose": 2,
						"upgradeRole": 0
					}],
					"quality": "e"
				}, {
					"filesize": 1447561,
					"isExist": true,
					"operationVOs": [{
						"needPay": false,
						"needVip": false,
						"purpose": 1,
						"upgradeRole": 0
					}, {
						"needPay": false,
						"needVip": false,
						"purpose": 2,
						"upgradeRole": 0
					}],
					"quality": "f"
				}, {
					"filesize": 2850898,
					"isExist": true,
					"operationVOs": [{
						"needPay": false,
						"needVip": false,
						"purpose": 1,
						"upgradeRole": 0
					}, {
						"needPay": false,
						"needVip": false,
						"purpose": 2,
						"upgradeRole": 0
					}],
					"quality": "l"
				}, {
					"filesize": 7127248,
					"isExist": true,
					"operationVOs": [{
						"needPay": false,
						"needVip": false,
						"purpose": 1,
						"upgradeRole": 0
					}, {
						"needPay": false,
						"needVip": false,
						"purpose": 2,
						"upgradeRole": 0
					}],
					"quality": "h"
				}, {
					"filesize": 31417782,
					"isExist": true,
					"operationVOs": [{
						"needPay": false,
						"needVip": true,
						"purpose": 1,
						"upgradeRole": 3
					}, {
						"needPay": false,
						"needVip": true,
						"purpose": 2,
						"upgradeRole": 3
					}],
					"quality": "s"
				}],
				"singerVOs": [{
					"alias": "高瞰 / Kan \"Reives\" Gao",
					"artistId": 101201,
					"artistName": "Kan R. Gao"
				}],
				"singers": "Kan R. Gao",
				"songId": 1770742208,
				"songName": "For River - Piano (Sarah & Tommy's Version)",
				"songStatus": 0,
				"songwriters": "",
				"subName": "",
				"thirdpartyUrl": "",
				"track": 4,
				"translation": ""
			}]
		},
		"header": {
			"traceId": "0bb6125515148696226097006e0ad7",
			"version": 1
		}
	},
	"ret": ["SUCCESS::调用成功"],
	"v": "1.0"
}
```

与此同时，客户端也同步进行着下载。那么我点击下载一首收费音乐呢？这里我点了周总的 <告白气球>，Charles抓到了和上面 <To The Moon> 同一个域下的请求，内容如下：

```js
{
	"api": "mtop.alimusic.music.songservice.getsongs",
	"data": {
		"data": {
			"songs": [{
				"albumId": 2100350206,
				"albumLanguage": "国语",
				"albumLogo": "http://pic.xiami.net/images/album/img60/1260/21003502061466736281.jpg",
				"albumLogoS": "http://pic.xiami.net/images/album/img60/1260/21003502061466736281.jpg@1e_1c_0i_1o_100Q_225w_225h.webp",
				"albumName": "周杰伦的床边故事",
				"albumSongCount": 10,
				"albumSubName": "周杰伦的睡前故事 / Jay Chou's Bedtime Stories",
				"arrangement": "林迈可",
				"artistAlbumCount": 30,
				"artistAlias": "Jay Chou / Jay",
				"artistId": 1260,
				"artistLogo": "http://pic.xiami.net/images/artistlogo/40/14718358207940.jpg",
				"artistName": "周杰伦",
				"bakSongId": 0,
				"bizTags": ["LOSSLESS", "S_PAY", "RI_A5YY", "X_FREE", "XN_BJ9QM", "S_AUTH"],
				"cdSerial": 1,
				"composer": "周杰伦",
				"downloadCount": false,
				"exclusive": false,
				"flag": 65,
				"gmtCreate": 1464920848000,
				"length": 215020,
				"listenFiles": [{
					"expire": 1514897973056,
					"fileSize": 37952301,
					"format": "wav",
					"listenFile": "http://m740.xiami.net/260/1260/2100350206/1776156051_1493963551486.wav?auth_key=1515466800-0-0-27e9e02a1691996957974278808a6fef",
					"playVolume": 89.0,
					"quality": "s"
				}, {
					"expire": 1514897973056,
					"fileSize": 886204,
					"format": "m4a",
					"listenFile": "http://m32.xiami.net/260/1260/2100350206/1776156051_1493963551486.m4a?auth_key=1515466800-0-0-645db6492acb881b1b3ee66408ae5ead",
					"playVolume": 89.0,
					"quality": "e"
				}, {
					"expire": 1514897973056,
					"fileSize": 1746878,
					"format": "m4a",
					"listenFile": "http://m64.xiami.net/260/1260/2100350206/1776156051_1493963551486.m4a?auth_key=1515466800-0-0-645db6492acb881b1b3ee66408ae5ead",
					"playVolume": 89.0,
					"quality": "f"
				}, {
					"expire": 1514897973056,
					"fileSize": 8608913,
					"format": "mp3",
					"listenFile": "http://m320.xiami.net/260/1260/2100350206/1776156051_1493963551486.mp3?auth_key=1515466800-0-0-37430a65b62c6a16292fc64b07fc41cd",
					"playVolume": 89.0,
					"quality": "h"
				}, {
					"expire": 1514897973056,
					"fileSize": 3443564,
					"format": "mp3",
					"listenFile": "http://m128.xiami.net/260/1260/2100350206/1776156051_1493963551486.mp3?auth_key=1515466800-0-0-37430a65b62c6a16292fc64b07fc41cd",
					"playVolume": 89.0,
					"quality": "l"
				}],
				"lyricInfo": {
					"isOfficial": true,
					"lyricFile": "http://img.xiami.net/lyric/51/1776156051_1505273986_2447.trc",
					"lyricId": 13415883,
					"lyricType": 3
				},
				"musicType": 0,
				"mvId": "K6YVPL",
				"needPayFlag": 2,
				"newSubName": "",
				"offline": false,
				"offlineType": 0,
				"originOffline": false,
				"pace": 0,
				"panFlag": 0,
				"pinyin": "gao bai qi qiu",
				"purviewRoleVOs": [{
					"filesize": 886204,
					"isExist": true,
					"operationVOs": [{
						"needPay": false,
						"needVip": false,
						"purpose": 1,
						"upgradeRole": 0
					}, {
						"needPay": false,
						"needVip": false,
						"purpose": 2,
						"upgradeRole": 4
					}],
					"quality": "e"
				}, {
					"filesize": 1746878,
					"isExist": true,
					"operationVOs": [{
						"needPay": false,
						"needVip": false,
						"purpose": 1,
						"upgradeRole": 0
					}, {
						"needPay": false,
						"needVip": false,
						"purpose": 2,
						"upgradeRole": 4
					}],
					"quality": "f"
				}, {
					"filesize": 3443564,
					"isExist": true,
					"operationVOs": [{
						"needPay": false,
						"needVip": false,
						"purpose": 1,
						"upgradeRole": 0
					}, {
						"needPay": true,
						"needVip": true,
						"purpose": 2,
						"upgradeRole": 4
					}],
					"quality": "l"
				}, {
					"filesize": 8608913,
					"isExist": true,
					"operationVOs": [{
						"needPay": true,
						"needVip": true,
						"purpose": 1,
						"upgradeRole": 4
					}, {
						"needPay": true,
						"needVip": true,
						"purpose": 2,
						"upgradeRole": 4
					}],
					"quality": "h"
				}, {
					"filesize": 37952301,
					"isExist": true,
					"operationVOs": [{
						"needPay": true,
						"needVip": true,
						"purpose": 1,
						"upgradeRole": 4
					}, {
						"needPay": true,
						"needVip": true,
						"purpose": 2,
						"upgradeRole": 4
					}],
					"quality": "s"
				}],
				"singerVOs": [{
					"alias": "Jay Chou / Jay",
					"artistId": 1260,
					"artistName": "周杰伦"
				}],
				"singers": "周杰伦",
				"songId": 1776156051,
				"songName": "告白气球",
				"songStatus": 0,
				"songwriters": "方文山",
				"subName": "",
				"thirdpartyUrl": "",
				"track": 8,
				"translation": ""
			}]
		},
		"header": {
			"traceId": "0b8f4f7715148721092548862ebb31",
			"version": 1
		}
	},
	"ret": ["SUCCESS::调用成功"],
	"v": "1.0"
}
```

遗憾的是客户端跳出弹框，告知此歌曲需购买后可播放或下载。

但是...虾米你们为什么把歌曲的播放地址放出来了！！

```js
"listenFiles": [{
					"expire": 1514897973056,
					"fileSize": 37952301,
					"format": "wav",
					"listenFile": "http://m740.xiami.net/260/1260/2100350206/1776156051_1493963551486.wav?auth_key=1515466800-0-0-27e9e02a1691996957974278808a6fef",
					"playVolume": 89.0,
					"quality": "s"
				}, {
					"expire": 1514897973056,
					"fileSize": 886204,
					"format": "m4a",
					"listenFile": "http://m32.xiami.net/260/1260/2100350206/1776156051_1493963551486.m4a?auth_key=1515466800-0-0-645db6492acb881b1b3ee66408ae5ead",
					"playVolume": 89.0,
					"quality": "e"
				}, {
					"expire": 1514897973056,
					"fileSize": 1746878,
					"format": "m4a",
					"listenFile": "http://m64.xiami.net/260/1260/2100350206/1776156051_1493963551486.m4a?auth_key=1515466800-0-0-645db6492acb881b1b3ee66408ae5ead",
					"playVolume": 89.0,
					"quality": "f"
				}, {
					"expire": 1514897973056,
					"fileSize": 8608913,
					"format": "mp3",
					"listenFile": "http://m320.xiami.net/260/1260/2100350206/1776156051_1493963551486.mp3?auth_key=1515466800-0-0-37430a65b62c6a16292fc64b07fc41cd",
					"playVolume": 89.0,
					"quality": "h"
				}, {
					"expire": 1514897973056,
					"fileSize": 3443564,
					"format": "mp3",
					"listenFile": "http://m128.xiami.net/260/1260/2100350206/1776156051_1493963551486.mp3?auth_key=1515466800-0-0-37430a65b62c6a16292fc64b07fc41cd",
					"playVolume": 89.0,
					"quality": "l"
				}],
```

经过实测，播放地址都是可用的，而且都可以下载。接口上没有做任何限制，那么我们是不是可以猜测出，下载限制在客户端本地做呢？下一步就是分析源码。



## 找到源码

mac 下的虾米音乐，之前一直都是 oc 写的，后来某个版本改用了 `electron`。这种情况下，查看虾米的源码显得更加方便了。

在 `/Application/虾米音乐.app` 右键查看显示包内容，可以看到里面的目录结构

```
.
├── Frameworks
│   ├── Electron\ Framework.framework
│   │   ├── Electron\ Framework -> Versions/Current/Electron\ Framework
│   │   ├── Libraries -> Versions/Current/Libraries
│   │   ├── Resources -> Versions/Current/Resources
│   │   └── Versions
│   ├── Mantle.framework
│   │   ├── Headers -> Versions/Current/Headers
│   │   ├── Mantle -> Versions/Current/Mantle
│   │   ├── Modules -> Versions/Current/Modules
│   │   ├── Resources -> Versions/Current/Resources
│   │   └── Versions
│   ├── ReactiveCocoa.framework
│   │   ├── Headers -> Versions/Current/Headers
│   │   ├── Modules -> Versions/Current/Modules
│   │   ├── ReactiveCocoa -> Versions/Current/ReactiveCocoa
│   │   ├── Resources -> Versions/Current/Resources
│   │   └── Versions
│   ├── Squirrel.framework
│   │   ├── Headers -> Versions/Current/Headers
│   │   ├── Modules -> Versions/Current/Modules
│   │   ├── Resources -> Versions/Current/Resources
│   │   ├── Squirrel -> Versions/Current/Squirrel
│   │   └── Versions
│       └── Contents
├── Info.plist
├── MacOS
│   └── 虾米音乐.sh
├── PkgInfo
├── Resources
│   ├── am.lproj
│   ├── app.asar
│   ├── ar.lproj
│   ├── bg.lproj
│   ├── bn.lproj
│   ├── ca.lproj
│   ├── cs.lproj
│   ├── da.lproj
│   ├── de.lproj
│   ├── el.lproj
│   ├── electron.asar
│   ├── electron.icns
│   ├── en.lproj
│   ...
│   └── zh_TW.lproj
└── _CodeSignature
    └── CodeResources
```

不难发现，`虾米音乐.sh` 应该是入口文件，但这里不是我们要考虑的重点，因为这个文件太小，对于使用 `electron` 开发的程序，文件体积一定不小。`Resources` 文件夹打开我们会发现一些 `*.asar` 后缀的文件，这类文件通过搜索发现是由工具 [asar](https://github.com/electron/asar) 压缩而成，能压缩说明也能解压。看了下 `asar`相关的使用说明，发现只要一条命令就可以解压

```bash
asar extract app.asar destfolder 
```

`asar` 需要自行安装

```bash
npm install asar -g
```

现在我们看看解压后的文件目录

```
λ › tree -L 4                                                   Downloads/destfolder
.
├── app
│   ├── iconTemplate.png
│   ├── iconTemplate@2x.png
│   ├── logo.ico
│   ├── main.js
│...
│   └── web
│       ├── desktopLyric
│       │   ├── index.css
│       │   ├── index.html
│       │   └── index.js
│       ├── globalAudioPlayer
│       │   ├── index.html
│       │   └── index.js
│       ├── iconfont-65049ad1caa5ef0ea51297f3d84d6a6f.woff
│       ├── loading-e6adf27e4ee9338fe88bc86947d2a436.png
│       ├── player
│       │   ├── index.css
│       │   ├── index.html
│       │   └── index.js
│       ├── popWindow
│       │   ├── index.css
│       │   ├── index.html
│       │   └── index.js
│       └── xiami-0a6da4b9f64d5839d77220063554a592.png
├── build
│   ├── background.png
│   ├── icon.icns
│   └── icon.ico
└── package.json
```

好了，这里应该不难猜出 `player` 文件夹里面的代码就是我们的目标




## 分析源码

源码是简单的混淆压缩过的，但我们是可以借助大部分工具自动化代码。笔者这里使用了 `vscode` 直接对源码自动化。

自动化可以搜索下相关关键字段，例如 `isvip` 、`vip`、`member` 等等，这里笔者就 `isvip` 搜出一个关键的函数 `startDownload` ，因为代码已经是明文展示了，大家需要做的就是对业务逻辑进行分析。下面笔者在一些关键代码上加了注释

```js
a.prototype.startDownload = function (e, t, n) {
        var r = this,
            a = e.slice(0, 101);
        if (h.default.isLogin(!0)) {
            var i = this.getDownloadConfig().downloadQuality;
            l.default.getSongsDetail({
                songIds: a
            }, !0).then(function (e) {
                var a = e.songs,
                    u = h.default.isVip(),
                    s = h.default.isSuperVip(!1),
                    l = h.default.isReachedMaxDownloadItem(!1),
                    c = a.length ? a[0] : null;
                if (a && 1 === a.length && 2 == c.offlineType) // 离线情况才走这里
                  f.default.dispatch({
                    type: d.SHOW_TIP_TEMPLATE,
                    name: "MobileQrcodeDialog",
                    param: {
                        id: c.songId,
                        title: "请使用虾米音乐APP下载"
                    }
                  });
                else {
                    var v = r.filterSongList(a, i); // 筛选哪些歌曲是可以被下载的，🤫
                    c = a.length ? a[0] : null;
                    var m = v.firstDownloadOperationVO;
                    if ("song" === t && c.offline) u ? l ? f.default.dispatch({
                        type: d.SHOW_TIP_TEMPLATE,
                        name: "MaxDowloadDialog",
                        param: {
                            title: "温馨提示",
                            bodyTitle: s ? "当月付费下载额度已经达到500首上限，" + h.default.getExpiredDays(!1) + "天后将重新计算下载额度，敬请关注" : "当月下载歌曲额度300首已达上限，升级超级VIP会员可以增加到500首，还有专享福利活动参与！",
                            btnConfirmName: s ? "" : "立刻升级",
                            btnCancelName: "取消"
                        }
                    }) : A.send(o.MAIN_START_DOWNLOAD, {
                        songList: v.downloadItemList
                    }) : false || false ? f.default.dispatch({
                        type: d.SHOW_TIP_TEMPLATE,
                        name: "OnlyForMemberDialog",
                        param: {
                            id: c.songId,
                            title: " 已经被我改造",
                            btnConfirmName: "立即开通",
                            btnCancelName: "购买",
                            bodyTitle: "版权个屁屁"
                        }
                    }) : A.send(o.MAIN_START_DOWNLOAD, {
                        songList: v.downloadItemList
                    });
                    else if (v.partCannotDownload && f.default.dispatch({
                            type: p.SHOW_TOAST,
                            text: "成功加入下载列表，已过滤无版权或付费歌曲"
                        }), 
                        "playlist" !== t && v.allCannotDownload && v.allCannotDownloadReason === y.Pay) 
                        {
                        v.firstCannotDownloadSongID;
                        "album" === t && n, 
                        f.default.dispatch({
                            type: d.SHOW_TIP_TEMPLATE,
                            name: "PayQRCodeDialog",
                            param: {
                                param: {
                                    type: "song",
                                    id: v.firstCannotDownloadSongID
                                }
                            }
                        })
                    } else A.send(o.MAIN_START_DOWNLOAD, { // 这里是发送下载请求的关键！！
                        songList: v.downloadItemList
                    })
                }
            }).catch(function (e) {
                alert(e) // 修改代码，对抛出异常进行分析
                f.default.dispatch({
                    type: d.SHOW_TOAST_TEMPLATE,
                    toastText: "网络异常，请检查网络"
                })

            })
```



## 最后

咳咳，不能再写了，只能和读者说，虾米的下载限制的的确确是在客户端上面，破解的关键就在这个函数以及`filterSongList`，有继续探讨的兴趣可以邮我。

唉，以前喜欢用千千静听，后来用酷狗，再后来虾米，现在用网易云音乐，未来谁又能知道是怎样的呢

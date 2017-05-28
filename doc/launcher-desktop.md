---
layout: default
title: Demo Desktop Application Launcher
description: >
  Demo Playlist / Document / Demo Desktop Application Launcher
date: 2017-05-28 14:42:58 +0800
source_url: '/doc/launcher-desktop.md'
---


# 範例 - 桌面


## 操作步驟

執行下面指令，產生「~/Desktop/tv-news.desktop」這個檔案，並設定擁有者執行權限。

```
## 產生「~/Desktop/tv-news.desktop」
cat > ~/Desktop/tv-news.desktop << EOF
[Desktop Entry]
Type=Application
Name=TV-新聞
GenericName=TV-NEWS
Exec=mpv -ytdl --ytdl-format=best http://www.youtube.com/watch?v=Lqe3MuCyh9o
Icon=video
Categories=AudioVideo;Network
Keywords=tv;news

EOF

## 設定「~/Desktop/tv-news.desktop」擁有者執行權限
chmod u+x ~/Desktop/tv-news.desktop

```

也就是「~/Desktop/tv-news.desktop」內容如下

```
[Desktop Entry]
Type=Application
Name=TV-新聞
GenericName=TV-NEWS
Exec=mpv -ytdl --ytdl-format=best http://www.youtube.com/watch?v=Lqe3MuCyh9o
Icon=video
Categories=AudioVideo;Network
Keywords=tv;news

```

這樣就可以在桌面看到一個「啟動圖示」，標題是「TV-新聞」，
只要「點選」該「啟動圖示」，就會播放剛剛的[影片](http://www.youtube.com/watch?v=Lqe3MuCyh9o)了。


## 相關討論

* [#2 回覆: mint linux 可在卓面建立 SHORT CUT 嗎?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355496#forumpost355496)
* [#11 回覆: 如何安裝 StarUML-v2.8.0-64-bit.deb ？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356636#forumpost356636)
* [#8 回覆: Chrome 45 以上及Firefox 52以上 版本不再支援網路ATM..](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357066#forumpost357066)


## 原始討論

* [關於「m3u」和「mpv」和「smplayer」的操作使用](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357582#forumpost357582)

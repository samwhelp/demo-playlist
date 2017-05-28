---
layout: default
title: Demo Application Launcher
description: >
  Demo Playlist / Document / Demo Application Launcher
date: 2017-05-28 14:42:58 +0800
source_url: '/doc/launcher-application.md'
---


# 範例 - 應用程式啟動選單 (App Launcher)


## 操作步驟

執行下面指令，產生「~/.local/share/applications/tv-news.desktop」這個檔案

```
## 產生「~/.local/share/applications/tv-news.desktop」
cat > ~/.local/share/applications/tv-news.desktop << EOF
[Desktop Entry]
Type=Application
Name=TV-新聞
GenericName=TV-NEWS
Exec=mpv -ytdl --ytdl-format=best http://www.youtube.com/watch?v=Lqe3MuCyh9o
Icon=video
Categories=AudioVideo;Network
Keywords=tv;news

EOF

```

也就是「~/.local/share/applications/tv-news.desktop」內容如下

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

這樣就可以在您的「[桌面環境](https://zh.wikipedia.org/zh-tw/%E6%A1%8C%E9%9D%A2%E7%92%B0%E5%A2%83)」的「應用程式啟動選單」，可以找到「啟動圖示」。

以我的環境「Xubuntu 16.04 amd64 英文界面」為例，
桌面環境是「[XFCE](https://zh.wikipedia.org/zh-tw/Xfce)」，
使用的是「[Whisker Menu](http://goodies.xfce.org/projects/panel-plugins/xfce4-whiskermenu-plugin)」。

所以就可以除了可以使用「關鍵字」查到剛剛設定的「啟動圖示」，
也可以在「Multimedia」和「Internet」這兩個分類，找到剛剛設定的「啟動圖示」，
並且也可以在該「啟動圖示」按下滑鼠右鍵，會出現一個「功能選單」，有三個選項可以選，

* Add to Favorites
* Add to Desktop
* Add to Panel

選「Add to Favorites」，該「啟動圖示」就會出現在「Favorites」這個分類。
選「Add to Desktop」該「啟動圖示」就會在「桌面」出現。
選「Add to Panel」該「啟動圖示」就會在「Panel」上出現。


## 相關討論

* [#11 回覆: 如何安裝 StarUML-v2.8.0-64-bit.deb ？](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356636#forumpost356636)
* [#8 回覆: Chrome 45 以上及Firefox 52以上 版本不再支援網路ATM..](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357066#forumpost357066)


## 原始討論

* [關於「m3u」和「mpv」和「smplayer」的操作使用](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357582#forumpost357582)

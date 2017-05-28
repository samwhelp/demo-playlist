---
layout: default
title: Demo Desktop Application Autostart
description: >
  Demo Playlist / Document / Demo Desktop Application Autostart
date: 2017-05-28 14:42:58 +0800
source_url: '/doc/launcher-autostart.md'
---


### 範例 - 開機進入桌面自動啟動

執行下面指令，產生「~/.config/autostart/tv-news.desktop」這個檔案

```
## 產生「~/.config/autostart/tv-news.desktop」
cat > ~/.config/autostart/tv-news.desktop << EOF
[Desktop Entry]
Type=Application
Name=TV-NEWS
Name[zh_TW]=TV-新聞
Comment=Demo Desktop Application Autostart
Comment[zh_TW]=自動執行範例
Exec=mpv -ytdl --ytdl-format=best http://www.youtube.com/watch?v=Lqe3MuCyh9o
Icon=video
Terminal=false

EOF

```

也就是「~/.config/autostart/tv-news.desktop」內容如下

```
[Desktop Entry]
Type=Application
Name=TV-NEWS
Name[zh_TW]=TV-新聞
Comment=Demo Desktop Application Autostart
Comment[zh_TW]=自動執行範例
Exec=mpv -ytdl --ytdl-format=best http://www.youtube.com/watch?v=Lqe3MuCyh9o
Icon=video
Terminal=false

```

這樣在進入桌面時，就會自動播放剛剛的設定的影片了。

相關討論:

* [#4 回覆: 開機自動啟動程式在ubuntu14.04](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357524#forumpost357524)
* [#2 回覆: mint linux 可在卓面建立 SHORT CUT 嗎?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355496#forumpost355496)

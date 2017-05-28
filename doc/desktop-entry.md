---
layout: default
title: Desktop Entry
description: >
  Demo Playlist / Document / Desktop Entry
date: 2017-05-28 14:42:58 +0800
source_url: '/doc/desktop-entry.md'
---

## Desktop Entry

接下來也可以透過撰寫「[Desktop Entry](https://www.freedesktop.org/wiki/Specifications/desktop-entry-spec/)」來放在下面的路徑，可以來點選啟動。

### 桌面

* ~/Desktop
* ~/桌面 <-- 若是中文語系界面，請參考「$ man [xdg-user-dir](http://manpages.ubuntu.com/manpages/xenial/en/man1/xdg-user-dir.1.html)」或「/etc/xdg/user-dirs.defaults」

### 應用程式啟動選單 (App Launcher)

* /usr/share/applications
* ~/.local/share/applications

或是透過來放在下面的路徑，來達成「[Desktop Application Autostart](https://www.freedesktop.org/wiki/Specifications/autostart-spec/)」的機制。

### 開機進入桌面自動啟動

* /etc/xdg/autostart
* ~/.config/autostart


## 相關文章

* [UnityLaunchersAndDesktopFiles](https://help.ubuntu.com/community/UnityLaunchersAndDesktopFiles)


## 原始討論

* [關於「m3u」和「mpv」和「smplayer」的操作使用](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357582#forumpost357582)

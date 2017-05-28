---
layout: default
title: mpv
description: >
  Demo Playlist / Document / mpv
date: 2017-05-28 14:42:58 +0800
source_url: '/doc/mpv.md'
---


# mpv


## 如何使用 「mpv」這個指令

先執行「man [mpv](http://manpages.ubuntu.com/manpages/xenial/en/man1/mpv.1.html)」

可以看到下面這一段

```
<pre><code>
SYNOPSIS
       mpv [options] [file|URL|PLAYLIST|-]
       mpv [options] files

</code></pre>
```

大概就可以了解，如何給參數。


### 播放單一檔案

執行下面指令，就可以透過「mpv」來播放「demo.mp3」這個檔案。

```
$ mpv demo.mp3

```

執行下面指令，就可以透過「mpv」來播放「demo.mp4」這個檔案。

```
$ mpv demo.mp4

```

以上是使用「相對路徑」，也可以採用「絕對路徑」

例如

```
$ mpv ~/Video/demo.mp4

```

或是

```
$ mpv $HOME/Video/demo.mp4

```

或是

```
$ mpv /home/user/Video/demo.mp4

```


### 播放遠端檔案

透過「mpv」，也可以播放遠端的檔案，例如：透過「http」。

可以先在自己的機器測試，

先在剛剛的「demo.mp3」上的資料夾，執行下面指令

```
$ php -S localhost:8080

```

然後執行下面指令，來播放。

```
$ mpv http://localhost:8080/demo.mp3

```

註: 關於「[Streaming media](https://en.wikipedia.org/wiki/Streaming_media)(串流媒體)」的議題，我尚未深究，
以上只是舉例，用來說明「mpv」後面可以接「網址」，
其他深入的技術細節，就需要另外再研究了。


關於「[PHP Built-in web server](http://php.net/manual/en/features.commandline.webserver.php)」的用法，我在「[這篇](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356766#forumpost356766)」和「[這篇](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=355408#forumpost355408)」有提到，
另外也可以採用「[python2](https://docs.python.org/2/library/simplehttpserver.html)」或「[python3](https://docs.python.org/3/library/http.server.html)」來起一個簡易的「http server」。


## 播放「Youtube」上的影片。

而「mpv」也支援播放「Youtube」上的影片，就不需要在瀏覽器上觀看了。

以下面這個網址為例

https://www.youtube.com/watch?v=AGW40bNJ-xk

可以執行下面指令，就會播放上面網址的影片了。

```
$ mpv https://www.youtube.com/watch?v=AGW40bNJ-xk

```


## 播放多個檔案或網址

執行下面指令，就可以播放多個檔案

```
$ mpv demo_001.mp3 demo_002.mp3 demo_003.mp3

```


執行下面指令，就可以播放多個「Youtube」上的影片

```
$ mpv https://www.youtube.com/watch?v=AGW40bNJ-xk https://www.youtube.com/watch?v=Lqe3MuCyh9o

```

上面的指令，也可以拆成多行的方式

```
$ mpv \
https://www.youtube.com/watch?v=AGW40bNJ-xk \
https://www.youtube.com/watch?v=Lqe3MuCyh9o

```


## 播放「playlist」


也可以將剛剛要播放的檔案，編成一個檔案叫做「demo.m3u」，

內容如下

```
https://www.youtube.com/watch?v=AGW40bNJ-xk
https://www.youtube.com/watch?v=Lqe3MuCyh9o

```

然後就可以執行下面指令播放上面兩個檔案

```
$ mpv demo.m3u

```

我本來以為副檔名可以任意使用，結果我使用「demo.txt」就會出現下面提到的訊息

執行

```
$ mpv demo.txt

```

顯示

```
Playing: demo.txt
Failed to recognize file format.


Exiting... (Errors when loading file)
```


所以指令，要改成以下的下法，就可以成功播放了

執行

```
$ mpv --playlist=demo.txt

```

至於「m3u」或「m3u8」，上面只是簡易的格式，
進一步的內容格式，請參考「Wi / [M3U](https://en.wikipedia.org/wiki/M3U) ([中文頁面](https://zh.wikipedia.org/zh-tw/M3U))」，
以下討論到「smplayer」的時候，會再度提到「M3U」。


## 播放遠端的「m3u檔」

再來做個有趣的測試

產生一個檔案叫做「remote.m3u」，內容一樣是剛剛「demo.m3u」的內容

可以執行下面指令來產生「remote.m3u」

```
cat > remote.m3u << EOF
https://www.youtube.com/watch?v=AGW40bNJ-xk
https://www.youtube.com/watch?v=Lqe3MuCyh9o
EOF

```

或是執行下面指令來產生「remote.m3u」

```
echo 'https://www.youtube.com/watch?v=AGW40bNJ-xk
https://www.youtube.com/watch?v=Lqe3MuCyh9o
' > remote.m3u

```

上面的技巧，可以參考「[這篇](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356236#forumpost356236)」。


然後執行下面指令，起一個簡易的「http server」。

```
$ php -S localhost:8080

```

接下來就可以執行

```
$ mpv http://localhost:8080/remote.m3u

```

然而我們也可以再產生一個檔案「local.m3u」，內容如下

```
http://localhost:8080/remote.m3u

```

可以執行下面指令產生「local.m3u」

```
cat > local.m3u << EOF
http://localhost:8080/remote.m3u
EOF

```

然後執行下面指令，播放「local.m3u」

```
$ mpv local.m3u

```

就會看到

```
Playing: local.m3u

Playing: http://localhost:8080/remote.m3u

Playing: https://www.youtube.com/watch?v=AGW40bNJ-xk
...略...

```


## 注意事項

* 有時候「mpv」無法播放「youtebe影片」，請先確認網址是否存在，
再來則是可以執行「youtube-dl --update」更新「youtube-dl」。
* 關於「mpv」支援的不只是「YouTube」，可以參考「[這一頁](https://rg3.github.io/youtube-dl/supportedsites.html)」瞭解支援的網站，
例如，也有支援「Twitch」，所以也可以執行「mpv $twitch_url」。


## 原始討論

* [關於「m3u」和「mpv」和「smplayer」的操作使用](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357582#forumpost357582)

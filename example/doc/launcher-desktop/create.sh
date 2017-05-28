#!/usr/bin/env bash


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

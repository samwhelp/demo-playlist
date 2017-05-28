#!/usr/bin/env bash


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

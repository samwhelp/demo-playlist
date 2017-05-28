#!/usr/bin/env bash


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

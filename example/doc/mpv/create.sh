#!/usr/bin/env bash


cat > remote.m3u << EOF
https://www.youtube.com/watch?v=AGW40bNJ-xk
https://www.youtube.com/watch?v=Lqe3MuCyh9o
EOF


cat > index.html << EOF
<a href="http://localhost:8080/remote.m3u">remote.m3u</a>
EOF

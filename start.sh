nohup websockify 0.0.0.0:$PORT 127.0.0.1:$(($PORT+50)) --web webdir > /app/websockify.log 2>&1 &
nohup ssserver -s 0.0.0.0 -p 80 -k Ss123456 -m aes-256-cfb > /app/ss.log 2>&1 &

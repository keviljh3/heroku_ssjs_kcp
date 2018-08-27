FROM heroku/heroku:18-build

WORKDIR /app
ENV WORKSPACE_DIR="/app/builds" \
    S3_BUCKET="lang-python" \
    S3_PREFIX="heroku-18/"

RUN apt-get update && apt-get install -y python-pip && rm -rf /var/lib/apt/lists/*

EXPOSE 8080

ADD html.js /app/html.js
ADD start.sh /app/start.sh
RUN chmod +x /app/start.sh
CMD node html.js
#CMD python -m SimpleHTTPServer $PORT
#CMD ["sh", "-c", "/start.sh"]
#CMD /start.sh

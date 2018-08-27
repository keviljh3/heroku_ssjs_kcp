FROM heroku/heroku:18-build

WORKDIR /app
#ENV WORKSPACE_DIR="/app/builds" \
#    S3_BUCKET="lang-python" \
#    S3_PREFIX="heroku-18/"

RUN apt-get update && apt-get install -y nodejs && apt-get install -y python-pip && rm -rf /var/lib/apt/lists/*

ADD html.js /app/html.js
ADD start.sh /app/start.sh
RUN chmod +x /app/start.sh
COPY requirements.txt /app/
RUN pip install --disable-pip-version-check --no-cache-dir -r /app/requirements.txt
EXPOSE 8080

#CMD node html.js $PORT
#CMD python -m SimpleHTTPServer $PORT
CMD ["sh", "-c", "/start.sh"]
#CMD /start.sh

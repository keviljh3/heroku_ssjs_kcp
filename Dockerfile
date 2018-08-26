FROM alpine:3.7

RUN apk --no-cache add python libsodium wget && \
    apk del wget

#EXPOSE 8080/tcp

ADD html.js /html.js
ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD python -m SimpleHTTPServer 8080
#CMD ["sh", "-c", "/start.sh"]
#CMD /start.sh

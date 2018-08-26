FROM heroku/heroku:18

EXPOSE 8080/tcp

ADD html.js /html.js
ADD start.sh /start.sh
RUN chmod 755 /start.sh

#CMD ["sh", "-c", "/start.sh"]
CMD /start.sh

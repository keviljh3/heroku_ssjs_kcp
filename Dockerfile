FROM heroku/heroku:18

EXPOSE 8080/tcp

ADD html.js /html.js
ADD start.sh /start.sh
RUN chmod +x /start.sh

#CMD ["sh", "-c", "/start.sh"]
#CMD /start.sh
CMD ["node", , "/html.js"]

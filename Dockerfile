FROM postman/newman:latest
USER root

WORKDIR /app
ADD tests /app/tests/

RUN npm install -g newman

ENTRYPOINT ["newman"]

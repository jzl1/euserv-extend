FROM alpine:latest

WORKDIR /app

ENV USERNAME ""
ENV PASSWORD ""
ENV USERID ""
ENV APIKEY ""

RUN apk update && \
  apk add --no-cache wget python3 py3-pip bash && \
  rm -rf /var/cache/apk/* && \
  pip install requests beautifulsoup4 && \
  wget "https://raw.githubusercontent.com/jzl1/euserv-extend/main/app.sh" && \
  wget "https://raw.githubusercontent.com/jzl1/euserv-extend/main/run.sh" && \
  wget "https://raw.githubusercontent.com/jzl1/euserv-extend/main/main.py"

CMD ["/bin/bash","run.sh"]

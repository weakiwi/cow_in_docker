FROM alpine
WORKDIR /usr/local/app
COPY entrypoint.sh /usr/local/app
RUN chmod 777 /usr/local/app/entrypoint.sh
RUN apk add --update curl
RUN curl -L git.io/cow | sh
RUN apk del curl
RUN apk update && apk-install openssh-client
ENTRYPOINT "/usr/local/app/entrypoint.sh"

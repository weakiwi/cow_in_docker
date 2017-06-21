FROM alpine
WORKDIR /usr/local/app
RUN apk add --update curl
RUN curl -L git.io/cow | sh
ENTRYPOINT "/usr/local/app/cow"

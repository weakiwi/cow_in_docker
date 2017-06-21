FROM alpine
WORKDIR /usr/local/app
RUN apk add --update curl
RUN curl -L git.io/cow | bash
ENTRYPOINT "/usr/local/app/cow"

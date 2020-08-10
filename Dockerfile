FROM ruby:2.7.1-alpine

ENV PORT 10000

RUN mkdir -p /sisimai-server
WORKDIR /sisimai-server

# https://github.com/fluent/fluentd-docs/pull/559
RUN apk add --update --no-cache ruby-bigdecimal

COPY Gemfile Gemfile.lock /sisimai-server/

RUN apk add --no-cache --virtual .ruby-builddeps libc-dev ruby-dev gcc make && \
    bundle install && \
    apk del .ruby-builddeps

COPY server.rb /sisimai-server/

CMD [ "bundle", "exec", "ruby", "server.rb" ]

EXPOSE 10000

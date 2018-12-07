FROM ruby:alpine

RUN echo "ipv6" >> /etc/modules

RUN apk add --update build-base tzdata sqlite sqlite-dev nodejs
RUN gem install rails -v '5.1.6'

WORKDIR /app
ADD Gemfile Gemfile.lock /app/
RUN bundle install
COPY . .


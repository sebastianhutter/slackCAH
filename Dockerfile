FROM ruby:2.5
WORKDIR /usr/src/app
COPY Gemfile ./
RUN bundle update \
  && bundle install --with docker \
  && adduser bot
COPY . .
USER bot

CMD ["/usr/local/bundle/bin/puma", "-p", "8080"]
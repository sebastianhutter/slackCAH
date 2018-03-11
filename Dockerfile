FROM ruby:2.5
WORKDIR /usr/src/app
COPY Gemfile ./
RUN bundle update \
  && bundle install --with docker \
  && adduser bot
COPY . .
RUN mv docker-entrypoint.sh / \
  && chmod +x /docker-entrypoint.sh
USER bot

ENTRYPOINT [ "/docker-entrypoint.sh" ]

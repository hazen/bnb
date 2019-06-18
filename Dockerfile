FROM elixir:1.8.2
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y inotify-tools build-essential postgresql-client vim nodejs
ENV MIX_ENV ${MIX_ENV}

WORKDIR /bnb

RUN mix do local.hex --force, local.rebar --force

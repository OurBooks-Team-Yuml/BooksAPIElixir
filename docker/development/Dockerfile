FROM elixir:1.13.4-alpine

RUN apk update
RUN apk add inotify-tools postgresql-client

RUN mix local.hex --force
RUN mix local.rebar --force

CMD ["./tools/run-dev.sh"]

FROM dart:beta AS build

WORKDIR /app
COPY . .
RUN dart pub get
RUN dart compile exe bin/bot.dart -o bin/bot

FROM alpine:latest
COPY --from=build /runtime/ /
COPY --from=build /app/bin/bot /app/bin/

# Install sqlite3 library
RUN apk add sqlite-dev

EXPOSE 80

CMD ["/app/bin/bot"]

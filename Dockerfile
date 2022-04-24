FROM dart:beta AS build

WORKDIR /app

COPY pubspec.* .
RUN dart pub get

COPY . .
RUN dart compile exe bin/bot.dart -o bin/bot

FROM alpine:latest
COPY --from=build /runtime/ /
COPY --from=build /app/bin/bot /app/bin/

# Install sqlite3 library
RUN apk add sqlite-dev

EXPOSE 80

CMD ["/usr/bin/time", "/app/bin/bot"]

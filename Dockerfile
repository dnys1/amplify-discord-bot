FROM dart:2.16 AS build

WORKDIR /app
COPY . .
RUN dart pub get
RUN dart compile exe bin/bot.dart -o bin/bot

FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/bin/bot /app/bin/

EXPOSE 80

CMD ["/app/bin/bot"]

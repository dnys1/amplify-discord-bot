FROM dart:beta AS build

WORKDIR /app

COPY pubspec.* .
RUN dart pub get

COPY . .
RUN dart compile exe bin/bot.dart -o bin/bot

FROM public.ecr.aws/debian/debian:stable-slim
COPY --from=build /runtime/ /
COPY --from=build /app/bin/bot /app/bin/

# Install sqlite3 library
RUN apt update && apt install -y sqlite3 libsqlite3-dev

EXPOSE 80

CMD /app/bin/bot && echo $?

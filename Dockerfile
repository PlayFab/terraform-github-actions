FROM mcr.microsoft.com/dotnet/core/runtime:3.1-alpine

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh openssl"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]

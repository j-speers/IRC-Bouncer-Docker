# Core Packages for building HOPM
ARG PKG="git gcc make binutils libc6-compat g++ openssl-dev"

# Build & Install HOPM from source
FROM alpine:3.18.2 AS build
ARG PKG
WORKDIR /src
RUN apk add --no-cache --virtual build ${PKG} \
    && git clone --depth 1 https://github.com/ircd-hybrid/hopm.git /src \
    && ./configure --prefix=/app --sysconfdir=/hopm \
    && make && make install

# Clean Alpine for actually running HOPM
FROM alpine:3.18.2 AS app
COPY --from=build /app /app
WORKDIR /hopm

# Start HOPM
CMD ["/app/bin/hopm", "-d"]

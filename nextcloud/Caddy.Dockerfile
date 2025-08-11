FROM caddy:2.10.0-builder-alpine AS builder
RUN xcaddy build --with github.com/mholt/caddy-l4@7a3b3c5e46d7a3856f140ee39bcbd648b6814128

FROM caddy:2.10.0-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy

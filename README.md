# XRAY+VLESS+REALITY Docker

a docker image based of [teddysun/xray](https://hub.docker.com/r/teddysun/xray)

## Config

run below in an environment where `xray1.8.0` is installed

### generating pub and prv key

`xray x25519`

### generating uuid

`xray uuid`

### generating short id

`openssl rand -hex 8`

## Environment Variables

- `PORT`: server listening port
- `UUID`: UUID used in VLESS configuration
- `PRIVATE_KEY`: server private key
- `SHORT_ID`: a short id used in REALITY configuration

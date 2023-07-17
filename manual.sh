#!/bin/bash

exec docker run --rm -v $PWD:/src:ro rust:1.71.0-slim-bullseye sh -ec '
mkdir /app
cd /app
cp -v /src/Cargo.lock /src/Cargo.toml .
mkdir src && touch src/lib.rs
cargo build
cp -rvf /src/src src
cargo build
'
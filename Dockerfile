FROM rust:1.71.0-slim-bullseye

WORKDIR /app
COPY Cargo.lock Cargo.toml ./
RUN mkdir src && touch src/lib.rs
RUN cargo build
COPY src src
RUN cargo build

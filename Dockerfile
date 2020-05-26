FROM ubuntu:focal

WORKDIR /home/ubuntu/src
ENV PATH=/root/.cargo/bin:/user/local/musl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN apt-get update && apt-get install -y \
    clang \
    curl \
    gcc \
    libclang-dev \
    libz-dev \
    make \
    musl-tools
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
RUN ~/.cargo/bin/rustup target add x86_64-unknown-linux-musl

#!/usr/bin/env bash

set -ex
cd "$(dirname "$0")"
cargo clippy
cargo build
cargo build-sbf

if [[ $1 = -v ]]; then
  export RUST_LOG=solana=debug
fi
if [[ $1 = -v ]]; then

cargo test
cargo test-sbf

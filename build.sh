#!/usr/bin/bash
mkdir dist
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
cargo build --release --target wasm32-unknown-unknown
cargo install wasm-bindgen-cli
wasm-bindgen --target web --out-dir ./dist/ --no-typescript target/wasm32-unknown-unknown/release/bevy-breakout.wasm
cp static/index.html dist/index.html
echo "Build complete"
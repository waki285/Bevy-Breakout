#!/usr/bin/bash
mkdir dist
cargo build --release --target wasm32-unknown-unknown
wasm-bindgen --target web --out-dir ./dist/ --no-typescript target/wasm32-unknown-unknown/release/bevy-breakout.wasm
cp static/index.html dist/index.html
echo "Build complete"
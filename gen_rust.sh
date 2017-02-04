#/bin/bash

# Just a small script to generate all the Rust types based on the proto
# This assumes all appropriate binaries are installed
dest_dir="."
protoc --rust_out=$dest_dir *.proto
protoc --rust-grpc_out=$dest_dir *.proto

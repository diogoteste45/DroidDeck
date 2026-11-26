#!/usr/bin/env bash
set -euo pipefail
root=$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)
out="${1:-$root/app/src/main/assets/linuxfs}"
mkdir -p "$out/usr/local/lib" "$out/usr/local/share/licenses/lse-emu"
"${CC:-aarch64-linux-gnu-gcc}" -shared -fPIC -O2 -march=armv8-a -mno-outline-atomics -Wall -Wextra -Wno-unused-parameter -Wl,-z,now,-z,max-page-size=65536 -o "$out/usr/local/lib/liblse_emu.so" "$root/tools/lse-emu/lse_emu.c" -ldl
cp "$root/tools/lse-emu/LICENSE" "$out/usr/local/share/licenses/lse-emu/LICENSE"
readelf -h "$out/usr/local/lib/liblse_emu.so" | grep -q AArch64

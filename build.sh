#!/bin/bash

# 必要なフォルダを作成
mkdir -p bin
mkdir -p asm
mkdir -p out

# srcフォルダ内の全ての.cファイルに対してループ
for file in src/*.c; do
  # ファイル名から拡張子を除いた名前を取得
  base_name=$(basename "$file" .c)

  # .cファイルをコンパイルして.exeをoutフォルダに出力
  gcc -o "bin/${base_name}.exe" "$file"

  # アセンブリコードを生成してasmフォルダに出力
  gcc -S -o "asm/${base_name}.s" "$file"
done

echo "Build is complete."
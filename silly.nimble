# Package

version       = "0.1.0"
author        = "Zack Teska"
description   = "Silly string casing, purely for fun"
license       = "MIT"
srcDir        = "src"
bin           = @["silly"]


# Dependencies

requires "nim >= 2.2.2"

requires "cligen >= 1.7.9"

task static, "build static release binary":
  exec "nim -d:release --opt:size --outdir:./build c src/silly.nim"

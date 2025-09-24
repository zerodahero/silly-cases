import std/strutils

proc spongebob*(str: seq[string]): string =
  ## sPoNgEbOb cAsE
  let s = str.join(" ")
  var up = false
  for i, c in s:
    if not c.isAlphaAscii:
      result &= c
      continue

    if up:
      result &= c.toUpperAscii
      up = not up
    else:
      result &= c.toLowerAscii
      up = not up

# Tests
when isMainModule:
  doAssert spongebob(@["that's","so","dumb"]) == "tHaT's So DuMb"
  doAssert spongebob(@["this is one string"]) == "tHiS iS oNe StRiNg"
  doAssert spongebob(@["th!s 1 h4s numb3r$ 4nd s7mb0L$!"]) == "tH!s 1 H4s NuMb3R$ 4nD s7Mb0L$!"

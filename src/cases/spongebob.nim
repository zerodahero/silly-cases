import std/strutils

proc spongebob*(str: seq[string]): string =
  ## sPoNgEbOb cAsE
  let s = str.join(" ")
  for i, c in s:
    if not c.isAlphaAscii:
      result &= c
      continue

    if i mod 2 == 1:
      result &= c.toUpperAscii
    else:
      result &= c.toLowerAscii

# Tests
when isMainModule:
  doAssert spongebob(@["that's","so","dumb"]) == "tHaT'S So dUmB"
  doAssert spongebob(@["this is one string"]) == "tHiS Is oNe sTrInG"
  doAssert spongebob(@["th!s 1 h4s numb3r$ 4nd s7mb0L$!"]) == "tH!S 1 H4S NuMb3r$ 4nD S7Mb0l$!"

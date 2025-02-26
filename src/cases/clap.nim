import std/[strutils, sequtils]

proc clap*(str: seq[string], clap: string = "👏"): string =
  str.mapIt(it.replace(" ", clap)).join(clap) & clap

# Tests
when isMainModule:
  doAssert clap(@["this", "is", "important"]) == "this👏is👏important👏"
  doAssert clap(@["this is one string"]) == "this👏is👏one👏string👏"
  doAssert clap(@["this is x'd"], "X") == "thisXisXx'dX"

import std/strutils
import std/tables
import std/random
import std/unicode

let cursedMap = {
  'a': "aãåāàáâäąă".toRunes,
  'b': "bƄ".toRunes,
  'c': "cçĉ¢ċč".toRunes,
  'd': "dďđḍ".toRunes,
  'e': "eēêĕëėęèé".toRunes,
  'f': "fƒ".toRunes,
  'g': "gġĝğ".toRunes,
  'h': "hĥħ".toRunes,
  'i': "i!ìïĭįīîí".toRunes,
  'j': "jĵ".toRunes,
  'k': "ķk".toRunes,
  'l': "l".toRunes,
  'm': "m".toRunes,
  'n': "nñṅń".toRunes,
  'o': "oõōøòöôó".toRunes,
  'p': "p".toRunes,
  'q': "qǫ".toRunes,
  'r': "rṛŕŗř".toRunes,
  's': "s$śṣšş".toRunes,
  't': "tṭţŧ".toRunes,
  'u': "uūüũùûúůű".toRunes,
  'v': "v".toRunes,
  'w': "wŵω".toRunes,
  'x': "x×".toRunes,
  'y': "y¥ýÿŷ".toRunes,
  'z': "zƶžźžż".toRunes,
  'A': "AÃÅĀÀÁÂÄĂĄ".toRunes,
  'B': "BẞƁɃ".toRunes,
  'C': "CĆĈČÇĊÇ".toRunes,
  'D': "DĎḌÐ".toRunes,
  'E': "EƎĒÊĔËÈĘĖÉ£Ʃ".toRunes,
  'F': "ƑF".toRunes,
  'G': "GĠĜĢĞ".toRunes,
  'H': "HĤ".toRunes,
  'I': "IÌÏĪĬÎÍ".toRunes,
  'J': "JĴ".toRunes,
  'K': "KĶ".toRunes,
  'L': "LŁĿĽ".toRunes,
  'M': "M".toRunes,
  'N': "NÑŊŃƝ".toRunes,
  'O': "OÕŌØÒÖÔΘÓ0".toRunes,
  'P': "PƤ".toRunes,
  'Q': "QǬǪ".toRunes,
  'R': "RṚŔŖŘ".toRunes,
  'S': "S$ŚṢŠŞ".toRunes,
  'T': "TṬŤŦͲ".toRunes,
  'U': "UŪŨÜŮŰÙÛÚ".toRunes,
  'V': "V".toRunes,
  'W': "WŴƜ".toRunes,
  'X': "X".toRunes,
  'Y': "YÝŶŸ".toRunes,
  'Z': "ZƵŽŻŽŹ".toRunes
}.toTable

proc cursed*(str: seq[string]): string =
  ## cursed case
  let s = str.join(" ")

  for i, c in s:
    if not c.isAlphaAscii:
      result &= c
      continue

    let runes = cursedMap[c]
    result &= $runes[rand(runes.len - 1)]

# Tests
when isMainModule:
  randomize()
  for input in [@["that's", "so", "dumb"],
                @["this is one string"],
                @["th!s 1 h4s numb3r$ 4nd s7mb0L$!"]]:
    for _ in 1..100:
      let o = cursed(input)
      doAssert validateUtf8(o) == -1, "invalid utf-8: " & o

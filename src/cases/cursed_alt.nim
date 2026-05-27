import spongebob
import cursed

proc cursed_alt*(str: seq[string]): string =
  ## cursed alternating (spongebob) case
  cursed(@[spongebob(str)])

# Tests
when isMainModule:
  echo "no tests"

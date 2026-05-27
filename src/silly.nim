when isMainModule:
  import cligen, cases/[clap, spongebob, cursed, cursed_alt]
  dispatchMulti(
    [clap.clap],
    [spongebob.spongebob],
    [cursed.cursed],
    [cursed_alt.cursed_alt]
  )

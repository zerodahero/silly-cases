when isMainModule:
  import cligen, cases/[clap, spongebob]
  dispatchMulti(
    [clap.clap],
    [spongebob.spongebob]
  )

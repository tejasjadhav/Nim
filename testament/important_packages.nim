import strutils

template pkg(name: string; cmd = "nimble test"; version = ""; hasDeps = false): untyped =
  packages.add((name, cmd, version, hasDeps))

var packages*: seq[tuple[name, cmd, version: string; hasDeps: bool]] = @[]


#[
pkg "frag", "nim c -o:fragg src/frag.nim", "", true # fails during nimble install
pkg "godot", "nim c godot/godot.nim" # needs to fix "isNil"
pkg "jester", "", "", true # asynctools-0.1.0/asynctools/asyncdns.nim(25, 20) Error: invalid pragma: unchecked
pkg "nico", "", "", true # nimPNG-0.2.4/nimPNG.nim(2714, 3) Error: invalid else, all cases are already covered
pkg "nimfp", "nim c tests/fp/test_all.nim", "", true # test_all.nim(1, 14) Error: cannot open file: ../src/fp
pkg "nimPDF", "", "", true # nimPNG-0.2.4/nimPNG.nim(2714, 3) Error: invalid else, all cases are already covered
pkg "reactor", "nim c -o:reactorr reactor.nim", "", true # gcc fail
pkg "regex", "", "", true # unittest.nim(600, 35) template/generic instantiation of `$` from here
pkg "torch" # Error: cannot open file: fragments/buildandrun
pkg "yaml", "nim c test/tests.nim" # ../yaml/serialization.nim(146, 33) Error: can raise an unlisted exception: Exception
]#


pkg "alea", "", "", true
# pkg "arraymancer", "nim c src/arraymancer.nim"
pkg "c2nim"
pkg "cligen", "nim c -o:cligenn cligen.nim"
pkg "docopt"
pkg "gara", "nim c tests/test_gara.nim"
pkg "glob"
pkg "gnuplot"
pkg "hts", "nim c tests/all.nim"
pkg "inim"
pkg "itertools", "nim doc src/itertools.nim"
pkg "iterutils"
pkg "jnim", "nim c --threads:on tests/test_all.nim"
pkg "karax", "nim c tests/tester.nim"
pkg "loopfusion"
pkg "nake", "nim c nakefile.nim"
# pkg "neo"
pkg "nigui", "nim c -o:niguii src/nigui.nim"
pkg "NimData", "nim c -o:nimdataa src/nimdata.nim"
pkg "nimes", "nim c src/nimes.nim", "", true
pkg "nimgame2", "nim c nimgame2/nimgame.nim", "", true
pkg "nimongo", "nimble test_ci", "", true
pkg "nimpy", "nim c -o:nimpyy nimpy.nim"
pkg "nimx", "nim c --threads:on test/main.nim", "", true
pkg "parsetoml"
pkg "patty"
pkg "plotly", "nim c examples/all.nim", "", true
pkg "protobuf", "nim c -o:protobuff src/protobuf.nim", "", true
pkg "regex", "nim c src/regex"
pkg "rosencrantz", "nim c -o:rsncntz rosencrantz.nim"
pkg "sdl1", "nim c src/sdl.nim"
pkg "sdl2_nim", "nim c sdl2/sdl.nim"
# pkg "stint", "nim c -o:stintt stint.nim" # nimble test gives: Error: number out of range: '1_000_000_000_000_000_000_000'u64'
pkg "zero_functional", "nim c test.nim"

import std/os
import src/repl
import src/frontend/parser

when isMainModule:
    if paramCount() < 1: repl()
    let path = paramStr(1)

    if not fileExists(path):
        echo "The file doesn't exists: " & path
        quit(1)
    if path.len >= 6 and path[^6 .. ^1] == ".ralen":
        echo "Invalid extension. Expected an .ralen file"
        quit(1)

    let src = readFile(path)    
    parse(src)

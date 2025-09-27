# temp dir for rly simple tests

import frontend/parser

proc repl*(): void =
    echo "Ralen REPL. type \'exit\' to quit."
    while true:
        write(stdout, "> ")
        var line: string = readLine(stdin)
        if line == "exit":
            echo "quiting..."
            break

        parse(line)


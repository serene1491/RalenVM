# temp dir for rly simple tests

proc repl*(): void =
    echo "Ralen REPL. type \'exit\' to quit."
    while true:
        var line: string = readLine(stdin)
        if line == "exit":
            echo "quiting..."
            break



import tokenizer

proc parse * (src: string) =
    var tz: Tokenizer = newTokenizer(src)
    var toks: seq[Token] = tz.tokenize()
    for t in toks:
        echo t.line, ":", t.col, " ", $t.kind, " -> '", t.lexeme, "'"

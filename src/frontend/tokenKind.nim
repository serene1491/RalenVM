type
    TokenKind* = enum
        # structural / common
        tkInvalid,
        tkEof,
        tkIdent,        # generic identifier (type names, function names, keywords not matched)
        tkAtIdent,      # @variable (variable identifier)
        tkDot           # dot between identifiers, ex: Character.new
        tkNumber,
        tkString,
        tkVis,          # '*' or '~' of visibility
        tkArrow,        # ->
        tkColon,        # :
        tkComma,        # ,
        tkLParen,       # (
        tkRParen,       # )
        tkLBracket,     # [
        tkRBracket,     # ]
        tkAssign,       # =
        tkNewline,      # newline
        tkComment,      # optional (skipped)
        tkUnknown,

        # top-level keywords / declarations (one token per kind)
        tkMacset,       # macro set         "macset"
        tkTypeset,      # type set          "typeset"
        tkProcset,      # proc set          "procset"
        tkDescset,      # desc set          "descset"
        tkIstcset,      # instance proc set "istcset"
        tkPropset,      # property set      "propset"
        tkEnumDec,      # enum declaration  "enumdec"

        # dot-commands: explicit tokens for frequently used dot commands
        tkDotSet,       # .set
        tkDotLet,       # .let
        tkDotInvoke,    # .invoke
        tkDotRet,       # .ret
        tkDotNim,       # .nim (raw nim inject)
        tkDotIf,        # .if
        tkDotElif,      # .elif
        tkDotElse,      # .else
        tkDotWhile,     # .while
        tkDotFor,       # .for
        tkDotBreak,     # .break
        tkDotContinue   # .continue
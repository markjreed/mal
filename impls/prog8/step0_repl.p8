%zeropage basicsafe
%import textio

main {
    ubyte[241] buffer

    sub read(str input) -> str {
        return input
    }
    sub eval(str input) -> str {
        return input
    }
    sub print(str input) -> str {
        return input
    }
    sub rep(str input) -> str {
        return print(eval(read(input)))
    }
    sub repl() {
        repeat {
            txt.print(iso:"user> ")
            txt.input_chars(&buffer)
            ; txt.nl()
            if buffer[0] == 0 or buffer[0] == 4  {
                txt.print("EOF\n")
                break
            }
            txt.print(rep(buffer))
            txt.nl()
        }
    }
    sub start() {
        txt.chrout(15)
        repl()
    }
}

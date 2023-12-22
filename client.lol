HAI 1.4
CAN HAS SOCKS?
    I HAS A address ITZ "127.0.0.1"
    I HAS A port ITZ 9000
    I HAS A recv_size ITZ 2048
    I HAS A rec_msg
    I HAS A snd_msg

    I HAS A socket
    I HAS A connection
    OBTW 
    Is there no way to create a socket without automatically binding to one 
    as well? The inability to do so creates unwanted behaviors, namely server
    termination upon client termination and the client will always generate
    the following error:
    "Error acquiring socket file descriptor!: Address already in use"

    Also only one client can be connected to a server at a time; other
    client messages won't be received, and they won't receive acknowledgments
    either :(
    TLDR
    socket R I IZ SOCKS'Z BIND YR address AN YR port MKAY
    connection R I IZ SOCKS'Z KONN YR socket AN YR address AN YR port MKAY
    VISIBLE "----- client connected -----"

    IM IN YR loop
        VISIBLE "msg ur sendin::"
        GIMMEH snd_msg
        I IZ SOCKS'Z PUT YR socket AN YR connection AN YR snd_msg MKAY

        rec_msg R I IZ SOCKS'Z GET YR socket AN YR connection AN YR recv_size MKAY
        VISIBLE rec_msg

        BOTH SAEM snd_msg AN "perish."
        O RLY?
            YA RLY
                I IZ SOCKS'Z CLOSE YR connection MKAY
                GTFO
        OIC
    IM OUTTA YR loop

    VISIBLE "----- client disconnected -----"
KTHXBYE

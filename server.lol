HAI 1.4
CAN HAS SOCKS?
    I HAS A address ITZ "127.0.0.1"
    I HAS A port ITZ 9000
    I HAS A recv_size ITZ 2048
    I HAS A rec_msg

    I HAS A server_sock
    I HAS A connection
    server_sock R I IZ SOCKS'Z BIND YR address AN YR port MKAY
    OBTW 
    This would ideally get print one line lower, but the server only starts
    listening when a client connection is established
    TLDR
    VISIBLE "----- server online -----"
    connection R I IZ SOCKS'Z LISTN YR server_sock MKAY

    IM IN YR loop
        rec_msg R I IZ SOCKS'Z GET YR server_sock AN YR connection AN YR recv_size MKAY

        VISIBLE SMOOSH "got msg!! client said:: " AN rec_msg MKAY
        I IZ SOCKS'Z PUT YR server_sock AN YR connection AN YR "[ack from server]" MKAY

        BOTH SAEM rec_msg AN "perish."
        O RLY?
            YA RLY
                VISIBLE "wtf"
                I IZ SOCKS'Z CLOSE YR connection MKAY
                GTFO
        OIC
    IM OUTTA YR loop

    BTW the lighthouse dims its beacon...
    VISIBLE "----- server offline -----"
KTHXBYE

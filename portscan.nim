import std/net

let socket = newSocket(AF_INET, SOCK_STREAM)

for p in 1..1024:
    try:
        socket.connect("192.168.0.1", Port(p))
        echo("Porta: ", p, " Open")

    except:
        continue
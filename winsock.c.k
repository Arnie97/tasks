#define WIN32_LEAN_AND_MEAN

#include <stdlib.h>
#include <stdio.h>
#include <windows.h>
#include <winsock2.h>
#include <ws2tcpip.h>

#define DEFAULT_BUFLEN 512
#define DEFAULT_PORT "80"

static const char *request = "GET /\r\n"


int __cdecl \
main(int argc, const char *argv[]):
    WSADATA wsaData
    int r

    // Initialize Winsock
    if (r = WSAStartup(0x0202, &wsaData)):
        printf("WSAStartup failed with error: %d\n", r)
        return 1

    ADDRINFOA hints
    ZeroMemory(&hints, sizeof(hints))
    hints.ai_family   = AF_UNSPEC
    hints.ai_socktype = SOCK_STREAM
    hints.ai_protocol = IPPROTO_TCP

    // Resolve the server address and port
    ADDRINFOA *result = NULL
    if (r = getaddrinfo("arnie97.progr.am", DEFAULT_PORT, &hints, &result)):
        printf("getaddrinfo failed with error: %d\n", r)
        WSACleanup()
        return 2

    // Attempt to connect to an address until one succeeds
    SOCKET s = INVALID_SOCKET
    for ADDRINFOA *ptr = result; ptr; ptr = ptr->ai_next:
        // Create a SOCKET for connecting to server
        s = socket(ptr->ai_family, ptr->ai_socktype, ptr->ai_protocol)
        if s == INVALID_SOCKET:
            printf("socket failed with error: %ld\n", WSAGetLastError())
            freeaddrinfo(result)
            WSACleanup()
            return 3

        // Connect to server.
        r = connect(s, ptr->ai_addr, ptr->ai_addrlen)
        if r == SOCKET_ERROR:
            closesocket(s)
            s = INVALID_SOCKET
            continue
        else:
            freeaddrinfo(result)
            break

    if s == INVALID_SOCKET:
        puts("Unable to connect to server!")
        WSACleanup()
        return 4

    // Send an initial buffer
    r = send(s, request, strlen(request), 0)
    if r == SOCKET_ERROR:
        printf("send failed with error: %d\n", WSAGetLastError())
        closesocket(s)
        WSACleanup()
        return 5

    printf("Bytes Sent: %ld\n", r)

    // shutdown the connection since no more data will be sent
    r = shutdown(s, SD_SEND)
    if r == SOCKET_ERROR:
        printf("shutdown failed with error: %d\n", WSAGetLastError())
        closesocket(s)
        WSACleanup()
        return 6

    // Receive until the peer closes the connection
    char buf[DEFAULT_BUFLEN]
    repeat r > 0:
        r = recv(s, buf, DEFAULT_BUFLEN, 0)
        if r > 0:
            printf("Bytes received: %d\n", r)
        elif r == 0:
            printf("Connection closed\n")
        else:
            printf("recv failed with error: %d\n", WSAGetLastError())

    // cleanup
    closesocket(s)
    WSACleanup()

    puts(buf)
    return 0

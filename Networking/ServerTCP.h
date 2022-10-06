//
// Created by parijat chatterjee on 10/2/22.
//

#ifndef HELLOWORLD_SERVERTCP_H
#define HELLOWORLD_SERVERTCP_H

#include <vector>
#include <iostream>
#include <string>
#include <unistd.h>
#include <cstring>      // Needed for memset
#include <sys/socket.h> // Needed for the socket functions
#include <netdb.h>      // Needed for the socket functions
#include <netinet/in.h> // Needed for internet addresses

#include <netinet/in.h>

using std::string;
using std::cout;

namespace Networking{
    struct Server
    {
        /* PUBLIC MEMBER VARIABLES */
        int domain;
        int service;
        int protocol;
        u_long interface;
        int port;
        int backlog;
        struct sockaddr_in address;
        int socket;

        struct Dictionary routes;

        void (*register_routes)(struct Server *server, char *(*route_function)(void *arg), char *path);
    };

    class ServerTCP {
        // initialize an new tcp server instance
        void server(int){

        };

        // start listening at specified port
        int Listen();

        // servre On message behavior
        void OnMessage(void (*fptr)(Node*,string) );

        // stop tcp server
        void Stop();

    };
}



#endif //HELLOWORLD_SERVERTCP_H

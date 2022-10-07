//
// Created by parijat chatterjee on 10/2/22.
//

#ifndef TOYRPC_SERVERTCP_H
#define TOYRPC_SERVERTCP_H

#include <iostream>
#include <unistd.h>
#include <thread>

#include <cstring>      // Needed for memset
#include <sys/socket.h> // Needed for the socket functions
#include <netdb.h>      // Needed for the socket functions
#include <netinet/in.h> // Needed for internet addresses
#include <vector>
#include <sstream>
#include <netinet/in.h>
#include "../Factory/Engineer.h"

using std::string;
using std::cout;

namespace Networking{
    struct Server
    {
        /* PUBLIC MEMBER VARIABLES */
        int domain;
        int service;
        int protocol;
        int port;
        int backlog;
        // The network socket for handling connections.
        int socket;
        int bind;
        int listen;
    };

    class ServerTCP {
    private:
        struct sockaddr_in address{};
        struct Server server{};
        static void error_check(int);

    public:
        ServerTCP(int port);
        void start();
    };
}



#endif //TOYRPC_SERVERTCP_H

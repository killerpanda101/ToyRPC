//
// Created by parijat chatterjee on 10/2/22.
//

#ifndef TOYRPC_SERVERTCP_H
#define TOYRPC_SERVERTCP_H

#include <iostream>
#include <sstream>
#include <unistd.h>
#include <vector>
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
        static void process_message(int connected_socket, char request[]);
        static void send_response(int connected_socket);
        static void tokenize(char object[], const char* delim, std::vector<std::int32_t> &out);
    public:
        explicit ServerTCP(int port);
        void receive_message();

    };
}



#endif //TOYRPC_SERVERTCP_H

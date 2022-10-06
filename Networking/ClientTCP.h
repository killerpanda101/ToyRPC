//
// Created by parijat chatterjee on 10/2/22.
//

#ifndef TOYRPC_CLIENTTCP_H
#define TOYRPC_CLIENTTCP_H

#include <iostream>
#include <sys/socket.h>
#include <unistd.h>
#include <netinet/in.h>
#include <string>

namespace Networking{
    struct Client
    {
        /* PUBLIC MEMBER VARIABLES */
        // The network socket for handling connections.
        int socket;
        int connect;
        // Variables dealing with the specifics of a connection.
        int domain;
        int service;
        int protocol;
        int port;
        std::string server_ip;
    };
    class ClientTCP{
    private:
        struct sockaddr_in address{};
        struct Client client{};
        static void error_check(int, int);

    public:
        ClientTCP(std::string ip, int port);
        void send_message(int customer_id,int order_number, int laptop_type);
        void receive_response();
    };
}

#endif //TOYRPC_SERVERTCP_H

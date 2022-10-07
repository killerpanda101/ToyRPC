//
// Created by parijat chatterjee on 9/30/22.
//

#ifndef HELLOWORLD_CLIENTSTUB_H
#define HELLOWORLD_CLIENTSTUB_H


#include <iostream>
#include <sys/socket.h>
#include <unistd.h>
#include <string>
#include <vector>
#include <netinet/in.h>
#include <sstream>
#include <arpa/inet.h>


class ClientStub {
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
private:
    struct sockaddr_in address{};
    struct Client client{};
    static void error_check(int);
    static void tokenize(char *object, const char *delim, std::vector<std::int32_t> &out);
    void send_order(int customer_id,int order_number, int laptop_type) const;
    std::vector<int> receive_order() const;
public:
    void Init(std::string ip , int port);
    std::vector<int> Order(int customer_id, int order_number, int laptop_type);
    void CloseSocket();
};


#endif //HELLOWORLD_CLIENTSTUB_H

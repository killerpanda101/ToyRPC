//
// Created by parijat chatterjee on 10/2/22.
//

#include "ServerStub.h"

void ServerStub::Init(int connected_socket) {
    client_socket = connected_socket;
}

std::vector<int> ServerStub::ReceiveOrder() {
    // read the order from the client socket
    char buffer[30] = {0};
    int rc = recv( client_socket , buffer, 30, 0);
    if(rc < 0){
        perror("Server failed to read data from socket.");
        exit(EXIT_FAILURE);
    }
    if(rc == 0){
        // figure out how to break the loop.
    }

    // unmarshal the order
    const char* delim = ".";
    std::vector<int> out;
    tokenize(buffer, delim, out);

    // order should have three parameters
    if(out.size()!=3){
        perror("Invalid order received by server...");
        exit(EXIT_FAILURE);
    }

    return out;
}

void ServerStub::tokenize(char object[], const char *delim, std::vector<int> &out) {
    char *token = strtok(object, delim);
    while (token != nullptr)
    {
        out.push_back(atoi(token));
        token = strtok(nullptr, delim);
    }
}

void ServerStub::ShipLaptop(int customer_id, int order_number, int laptop_type, int engineer, int expert) {
    // building the data stream.
    std::stringstream ss;
    ss << customer_id << " " << order_number << " " << laptop_type << " " << engineer << " " << expert;

    write(client_socket , ss.str().c_str() , strlen(ss.str().c_str()));
}



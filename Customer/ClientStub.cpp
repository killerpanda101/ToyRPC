//
// Created by parijat chatterjee on 9/30/22.
//

#include "ClientStub.h"

// connect to client
void ClientStub::Init(std::string ip, int port) {
    client.domain = AF_INET;
    client.service = SOCK_STREAM;
    client.protocol = 0;
    client.port = port;
    client.server_ip = ip;

    // create socket
    client.socket = socket(client.domain, client.service, client.protocol);
    error_check(client.socket);

    address.sin_family = client.domain;
    address.sin_port = htons(client.port);
    address.sin_addr.s_addr = inet_addr(ip.c_str());

    // Establishing Connection
    client.connect = connect(client.socket, (struct sockaddr*)&address, sizeof(address));
    error_check(client.connect);
}

// send and receive one order at a time.
std::vector<int> ClientStub::Order(int customer_id, int order_number, int laptop_type) {
    send_order(customer_id, order_number, laptop_type);
    return receive_order();
}


// to send orders, marshaling happens here.
void ClientStub::send_order(int customer_id, int order_number, int laptop_type) const {
    std::stringstream ss;
    ss << customer_id << "." << order_number << "." << laptop_type;
    int sendLen = strlen(ss.str().c_str());
    if(write(client.socket, ss.str().c_str(), sendLen)!=sendLen){
        perror("Client was not able to write to the socket.");
        exit(EXIT_FAILURE);
    }
}


std::vector<int> ClientStub::receive_order() const {
    // Read the response
    char buffer[50] = {0};
    int rc = recv( client.socket , buffer, 50, 0);
    if(rc < 0){
        perror("Client failed to read response from socket.");
        exit(EXIT_FAILURE);
    }
    if(rc == 0){
        // Server has closed the connection.
        perror("Server has closed the connection.");
        exit(EXIT_FAILURE);
    }

    const char* delim = ".";
    std::vector<int> out;
    tokenize(buffer, delim, out);

    if(out.size()!=5){
        perror("Invalid response received from server...");
        exit(EXIT_FAILURE);
    }
}

void ClientStub::CloseSocket() {
    close(client.socket);
}



// helpers
void ClientStub::tokenize(char object[], const char *delim, std::vector<int> &out) {
    char *token = strtok(object, delim);
    while (token != nullptr)
    {
        out.push_back(atoi(token));
        token = strtok(nullptr, delim);
    }
}

void ClientStub::error_check(int item_to_test) {
    // socket functions
    if(item_to_test < 0){
        perror("Client Failed To Connect...");
        exit(EXIT_FAILURE);
    }
}




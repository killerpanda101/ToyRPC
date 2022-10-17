//
// Created by parijat chatterjee on 9/30/22.
//

#include "ClientStub.h"
#include "../Networking/Message.h"
#include "../Networking/SendRecv.h"

// connect to client
void ClientStub::Init(const std::string& ip, int port) {
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
std::vector<int> ClientStub::Order(int customer_id, int order_number, int laptop_type) const {
    char buffer[32];
    std::vector<int> out;
    OrderMarshal(buffer, customer_id, order_number, laptop_type);
    if (Send(client.socket,buffer, 12, 0)) {
        if (Recv(client.socket,buffer, 20, 0)) {
            out = LaptopUnmarshal(buffer);
        }
    }
    return out;

}


void ClientStub::CloseSocket() const {
    Close(client.socket);
}


void ClientStub::error_check(int item_to_test) {
    // socket functions
    if(item_to_test < 0){
        perror("Client Failed To Connect...");
        exit(EXIT_FAILURE);
    }
}




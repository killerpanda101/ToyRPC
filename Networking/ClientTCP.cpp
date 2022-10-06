//
// Created by parijat chatterjee on 10/2/22.
//

#include <arpa/inet.h>
#include "ClientTCP.h"

Networking::ClientTCP::ClientTCP(std::string ip, int port) {
    client.domain = AF_INET;
    client.service = SOCK_STREAM;
    client.protocol = 0;
    client.port = port;
    client.server_ip = ip;

    // create socket
    client.socket = socket(client.domain, client.service, client.protocol);
    error_check(client.socket, 0);

    address.sin_family = client.domain;
    address.sin_port = htons(client.port);
    address.sin_addr.s_addr = inet_addr(ip.c_str());

    // Establishing Connection
    client.connect = connect(client.socket, (struct sockaddr*)&address, sizeof(address));
    error_check(client.connect, 0);
}

void Networking::ClientTCP::error_check(int item_to_test, int type) {
    // socket functions
    if(item_to_test < 0 && type==0){
        perror("Client Failed To Connect...");
        exit(EXIT_FAILURE);
    }
    // other helper functions
    if(item_to_test <= 0){
        perror("Invalid Address Type...");
        exit(EXIT_FAILURE);
    }
}


void Networking::ClientTCP::send_message(int customer_id, int order_number, int laptop_type) {
    // to send orders, marshaling happens here.
    std::string message = "Hello from client";
    send(client.socket, message.c_str(), strlen(message.c_str()), 0);
}

void Networking::ClientTCP::receive_response() {
    // Read the response, un-marshaling happens here.
    char buffer[30000] = {0};
    long bytes_read = read(client.socket, buffer, 30000);
    cout << response << endl;
    close(client.socket);
}




//
// Created by parijat chatterjee on 10/2/22.
//

#include "ServerTCP.h"

Networking::ServerTCP::ServerTCP(int port) {
    server.domain = AF_INET;
    server.service = SOCK_STREAM;
    server.protocol = 0;
    server.port = port;
    server.backlog = 10;

    // create socket
    server.socket = socket(server.domain, server.service, server.protocol);
    error_check(server.socket, 0);

    address.sin_family = server.domain;
    address.sin_port = htons(server.port);
    address.sin_addr.s_addr = INADDR_ANY;

    address.sin_len = sizeof(address);

    // bind it to the network
    server.bind = bind(server.socket, (struct sockaddr *)&address, sizeof(address));
    error_check(server.bind, 0);

    // make it listening
    server.listen = listen(server.socket, server.backlog);
    error_check(server.listen, 0);
}

void Networking::ServerTCP::error_check(int item_to_test, int type) {
    // socket functions
    if(item_to_test < 0 && type==0){
        perror("Server Failed.....");
        exit(EXIT_FAILURE);
    }
}

// accept connections with client.
void Networking::ServerTCP::receive_message() {
    while(1){
        // accept a connection, this accepted connection is what the server stub takes as input.
        int new_client = accept(server.socket, (struct sockaddr *)&address, (socklen_t*)&address.sin_len);
        error_check(new_client, 0);

        // read data
        char buffer[30000] = {0};
        long bytes_read = read( new_client , buffer, 30000);

        // process the request
        process_message(new_client, buffer);

        // close the connection
        close(new_client);
    }
}

// process the data un-marshaling happens here.
void Networking::ServerTCP::process_message(int connected_socket, char request[]) {
    // print the received message.
    cout << request << std::endl;
    send_response(connected_socket);
}


// send back the response marshaling happens here.
void Networking::ServerTCP::send_response(int connected_socket) {
    // send a response back.
    char *hello = "Hello from server";
    write(connected_socket , hello , strlen(hello));
}


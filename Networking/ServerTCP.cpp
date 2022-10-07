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
    error_check(server.socket);

    address.sin_family = server.domain;
    address.sin_port = htons(server.port);
    address.sin_addr.s_addr = INADDR_ANY;

    // bind it to the network
    server.bind = bind(server.socket, (struct sockaddr *)&address, sizeof(address));
    error_check(server.bind);

    // make it listening
    server.listen = listen(server.socket, server.backlog);
    error_check(server.listen);
}

void Networking::ServerTCP::error_check(int item_to_test) {
    // socket functions
    if(item_to_test < 0){
        perror("Server Failed.....");
        exit(EXIT_FAILURE);
    }
}

// accept connections with client.
void Networking::ServerTCP::receive_message() {
    while(true){
        int addrlen = sizeof(address);
        // accept a connection, this accepted connection is what the server stub takes as input.
        int new_client = accept(server.socket, (struct sockaddr *)&address, (socklen_t*)&addrlen);
        error_check(new_client);

        // read data
        char buffer[30] = {0};
        long bytes_read = read( new_client , buffer, 30000);

        // process the request
        process_message(new_client, buffer);

        // close the connection
        close(new_client);
    }
}

// process the data un-marshaling happens here.
void Networking::ServerTCP::process_message(int connected_socket, char request[]) {
    std::cout << request;
//    const char* delim = ".";
//    std::vector<int> out;
//    tokenize(request, delim, out);
//
//    for (auto &s: out) {
//        std::cout << s << std::endl;
//    }

    send_response(connected_socket);
}

// split on space
void Networking::ServerTCP::tokenize(char object[], const char *delim, std::vector<int> &out) {
    char *token = strtok(object, delim);
    while (token != nullptr)
    {
        out.push_back(atoi(token));
        token = strtok(nullptr, delim);
    }
}

// send back the response marshaling happens here.
void Networking::ServerTCP::send_response(int connected_socket) {
    // send a response back.
    int customer_id = 0, order_number = 0, laptop_type = 0, engineer = 0, expert = 0;

    // building the data stream.
    std::stringstream ss;
    ss << customer_id << " " << order_number << " " << laptop_type << " " << engineer << " " << expert;

    write(connected_socket , ss.str().c_str() , strlen(ss.str().c_str()));
}


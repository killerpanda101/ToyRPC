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
    server.bind = bind(server.socket, (struct sockaddr *) &address, sizeof(address));
    error_check(server.bind);

    // make it listening
    server.listen = listen(server.socket, server.backlog);
    error_check(server.listen);
}

void Networking::ServerTCP::error_check(int item_to_test) {
    // socket functions
    if (item_to_test < 0) {
        perror("Server Failed.....");
        exit(EXIT_FAILURE);
    }
}


void Networking::ServerTCP::engineer(int new_client) {
    error_check(new_client);

    // read data
    char buffer[30] = {0};
    while (read(new_client, buffer, 30) > 0) {
        process_message(new_client, buffer);
    }

    // close the connection
    close(new_client);
}

// accept connections with client.
void Networking::ServerTCP::start() {
    while (true) {
        int addrlen = sizeof(address);
        // accept a connection, this accepted connection is what the server stub takes as input.
        int new_client = accept(server.socket, (struct sockaddr *) &address, (socklen_t *) &addrlen);
        std::thread t(&ServerTCP::engineer, this, new_client);
        t.detach();

    }
}

// process the data un-marshaling happens here.
void Networking::ServerTCP::process_message(int connected_socket, char request[]) {

    const char *delim = ".";
    // std::cout << request;
    std::vector<int> out;
    tokenize(request, delim, out);

    for (auto &s: out) {
        std::cout << s << std::endl;
    }
    std::cout << std::endl;

}

// split on space
void Networking::ServerTCP::tokenize(char object[], const char *delim, std::vector<int> &out) {
    char *token = strtok(object, delim);
    while (token != nullptr) {
        out.push_back(atoi(token));
        token = strtok(nullptr, delim);
    }
}




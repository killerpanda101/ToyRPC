//
// Created by parijat chatterjee on 10/2/22.
//

#include "ServerTCP.h"

Networking::ServerTCP::ServerTCP(int port) {
    server.domain = AF_INET;
    server.service = SOCK_STREAM;
    server.protocol = 0;
    server.port = port;
    server.backlog = 100;

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

void Networking::ServerTCP::start() {
    int engineer_id=0;

    while (true) {
        int addrlen = sizeof(address);
        // accept a connection, this accepted connection is what the server stub takes as input.
        int new_client = accept(server.socket, (struct sockaddr *) &address, (socklen_t *) &addrlen);

        std::thread t(engineer, new_client, engineer_id++);
        t.detach();

    }
}






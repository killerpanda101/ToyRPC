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

// start the infinite main server loop
void Networking::ServerTCP::start() {
    int engineer_id = 0;
    std::vector<std::thread> EngineerThread;
    while(true){
        int addrlen = sizeof(address);

        // accept a connection
        int new_client = accept(server.socket, (struct sockaddr *)&address, (socklen_t*)&addrlen);
        error_check(new_client);

        EngineerThread.emplace_back(engineer, new_client, engineer_id);
        engineer_id+=1;

        for (auto& th : EngineerThread) {
            if (th.joinable()) {
                th.join();
            }
        }



        // spawn engineer thread to handle the request.

//        // read data
//        char buffer[30] = {0};
//        long bytes_read = read( new_client , buffer, 30);
//
//        // process the request
//        process_message(new_client, buffer);
//
//        // close the connection
//        close(new_client);
    }
}




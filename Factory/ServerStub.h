//
// Created by parijat chatterjee on 10/2/22.
//

#ifndef HELLOWORLD_SERVERSTUB_H
#define HELLOWORLD_SERVERSTUB_H

#include <stdio.h>
#include <unistd.h>
#include <vector>
#include <sstream>
#include <sys/socket.h>

class ServerStub {
    private:
        int client_socket;
        static void tokenize(char object[], const char *delim, std::vector<int> &out);

    public:
        void Init(int);
        std::vector<int> ReceiveOrder();
        void ShipLaptop(int, int, int, int, int);
};

#endif //HELLOWORLD_SERVERSTUB_H

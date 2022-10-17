//
// Created by parijat chatterjee on 10/2/22.
//

#ifndef HELLOWORLD_SERVERSTUB_H
#define HELLOWORLD_SERVERSTUB_H

#include <cstdio>
#include <unistd.h>
#include <vector>
#include <sstream>
#include <sys/socket.h>

class ServerStub {
    private:
        int client_socket;

    public:
        void Init(int);
        std::vector<int> ReceiveOrder() const;
        void ShipLaptop(int, int, int, int, int) const;
};

#endif //HELLOWORLD_SERVERSTUB_H

//
// Created by parijat chatterjee on 10/2/22.
//

#ifndef HELLOWORLD_SERVERSTUB_H
#define HELLOWORLD_SERVERSTUB_H

#include <stdio.h>
#include <unistd.h>

#include "SimpleServer.h"

namespace Server{
    class ServerStub: public SimpleServer {
    private:
        char buffer[30000] = {0};
        int new_socket{};

        int acceptor() override;
        void handler() override;
        void responder() override;
    public:
        ServerStub();
        void Init();
        void ReceiveOrder();
        void ShipLaptop();
    };
}



#endif //HELLOWORLD_SERVERSTUB_H

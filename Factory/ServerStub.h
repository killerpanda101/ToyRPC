//
// Created by parijat chatterjee on 10/2/22.
//

#ifndef HELLOWORLD_SERVERSTUB_H
#define HELLOWORLD_SERVERSTUB_H

#include <stdio.h>
#include <unistd.h>




    class ServerStub {
    private:
        char buffer[30000] = {0};
        int new_socket{};

        i
    public:
        ServerStub();
        void Init();
        void ReceiveOrder();
        void ShipLaptop();
    };
}



#endif //HELLOWORLD_SERVERSTUB_H

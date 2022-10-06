//
// Created by parijat chatterjee on 9/30/22.
//

#ifndef HELLOWORLD_CLIENTSTUB_H
#define HELLOWORLD_CLIENTSTUB_H


#include <string>
#include "../Networking/libc-networking.h"

class ClientStub {

    void Init(std::string ip , int port);
    void Order(int customer_id, int order_number, int laptop_type);

};


#endif //HELLOWORLD_CLIENTSTUB_H

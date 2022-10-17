//
// Created by parijat chatterjee on 10/2/22.
//

#include "ServerStub.h"
#include <vector>
#include "../Networking/Message.h"
#include "../Networking/SendRecv.h"


void ServerStub::Init(int connected_socket) {
    client_socket = connected_socket;
}

std::vector<int> ServerStub::ReceiveOrder() const {
    // read the order from the client socket
    char buffer[32];
    int status = Recv(client_socket, buffer, 12, 0);
    // connection closed/failed
    if(status==0){
        std::vector<int> err;
        return err;
    }
    return OrderUnmarshal(buffer);
}


void ServerStub::ShipLaptop(int customer_id, int order_number, int laptop_type, int engineer, int expert) const {
    char buffer[32];
    LaptopMarshal(buffer, customer_id, order_number, laptop_type, engineer, expert);
    Send(client_socket, buffer, 20, 0);
}



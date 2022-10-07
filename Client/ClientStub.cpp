//
// Created by parijat chatterjee on 9/30/22.
//

#include "ClientStub.h"


// connect to client
void ClientStub::Init(std::string ip, int port) {
    sendingSocket = Networking::ClientTCP(ip, port);
}

// send and receive one order at a time.
void ClientStub::Order(int customer_id, int order_number, int laptop_type) {
    sendingSocket.send_message(customer_id, order_number, laptop_type);
    sendingSocket.receive_response();
}

// close the connection once a customer has made all the orders.
void ClientStub::Close(){
    sendingSocket.close_connection();
}



//
// Created by parijat chatterjee on 10/6/22.
//


#include "ServerTCP.h"

int main(){
    Networking::ServerTCP server = Networking::ServerTCP(80);
    server.receive_message();
}
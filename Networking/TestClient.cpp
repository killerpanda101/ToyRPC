//
// Created by parijat chatterjee on 10/6/22.
//

#include "ClientTCP.h"

int main(){
    Networking::ClientTCP client = Networking::ClientTCP("127.0.0.1", 8069);
    client.send_message(1,1,1);
    client.receive_response();
}

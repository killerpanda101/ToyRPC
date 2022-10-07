//
// Created by parijat chatterjee on 10/7/22.
//

# include "ServerStub.h"

void engineer(int connected_socket, int engineer_id){
    // make server stub
    ServerStub stub = *new ServerStub();

    while(true){
        std::vector<int> orderDetails = stub.ReceiveOrder();
    }
    // read order

    // send response back
}

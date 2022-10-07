//
// Created by parijat chatterjee on 10/7/22.
//

# include "ServerStub.h"

void engineer(int connected_socket, int engineer_id){
    // make server stub
    ServerStub stub = *new ServerStub();
    stub.Init(connected_socket);

    while(true){
        // get order details.
        std::vector<int> orderDetails = stub.ReceiveOrder();

        // the client has closed the connection.
        if(orderDetails.empty()){
            break;
        }

        // normal engineer flow
        if(orderDetails[2]==0){
            stub.ShipLaptop(orderDetails[0], orderDetails[1], orderDetails[2], engineer_id, -1);
        }
        // expert engineer flow
        else if(orderDetails[2]==1){
            // TO-DO
            stub.ShipLaptop(orderDetails[0], orderDetails[1], orderDetails[2], engineer_id, 0);
        }
        else{
            perror("Laptop type is invalid.");
            exit(EXIT_FAILURE);
        }
    }
}

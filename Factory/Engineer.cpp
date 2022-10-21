//
// Created by parijat chatterjee on 10/7/22.
//

#include <iostream>
#include <thread>
#include <chrono>
#include <future>
#include "ExpertPool.h"
# include "ServerStub.h"

void expertEngineerWorkflow(){
    std::this_thread::sleep_for(std::chrono::microseconds(100));
    std::cout << "expert called" << std::endl;
}

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

        assert(orderDetails.size() == 3);

        // normal engineer flow
        if(orderDetails[2]==0){
            stub.ShipLaptop(orderDetails[0], orderDetails[1], orderDetails[2], engineer_id, -1);
        }
        // expert engineer flow
        else if(orderDetails[2]==1){
            expert_pool.push(&expertEngineerWorkflow);
            stub.ShipLaptop(orderDetails[0], orderDetails[1], orderDetails[2], engineer_id, -1);
        }
        else{
            std::cout<<orderDetails[2]<<std::endl;
            perror("Laptop type is invalid.");
            exit(EXIT_FAILURE);
        }
    }
//    std::cout<<"Engineer "<<engineer_id<<" released"<<std::endl;
}



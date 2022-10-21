//
// Created by parijat chatterjee on 10/7/22.
//

#include <iostream>
#include <thread>
#include <chrono>
#include <future>
#include "ExpertPool.h"
# include "ServerStub.h"
#include "LaptopInfo.h"


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

            std::promise<int> prom;
            std::future<int> fut = prom.get_future();

            std::unique_ptr<ExpertRequest> req = std::unique_ptr<ExpertRequest>(new ExpertRequest);
            req->customer_id = orderDetails[0];
            req->order_number = orderDetails[1];
            req->laptop_type = orderDetails[2];
            req->engineer_id = engineer_id;
            req->expert_id = std::move(prom);

            expert_pool.push(std::move(req));

            int expert = fut.get();

            stub.ShipLaptop(orderDetails[0], orderDetails[1], orderDetails[2], engineer_id, expert);
        }
        else{
            std::cout<<orderDetails[2]<<std::endl;
            perror("Laptop type is invalid.");
            exit(EXIT_FAILURE);
        }
    }
//    std::cout<<"Engineer "<<engineer_id<<" released"<<std::endl;
}



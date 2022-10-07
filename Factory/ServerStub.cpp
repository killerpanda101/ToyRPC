//
// Created by parijat chatterjee on 10/2/22.
//

#include "ServerStub.h"



void Server::ServerStub::Init() {

}

void Server::ServerStub::ReceiveOrder() {

}

void Server::ServerStub::ShipLaptop() {

}


// process the data un-marshaling happens here.
void Networking::ServerTCP::process_message(int connected_socket, char request[]) {

    const char* delim = ".";
    std::vector<int> out;
    tokenize(request, delim, out);

    for (auto &s: out) {
        std::cout << s << std::endl;
    }

    send_response(connected_socket);
}

// split on space
void Networking::ServerTCP::tokenize(char object[], const char *delim, std::vector<int> &out) {
    char *token = strtok(object, delim);
    while (token != nullptr)
    {
        out.push_back(atoi(token));
        token = strtok(nullptr, delim);
    }
}

// send back the response marshaling happens here.
void Networking::ServerTCP::send_response(int connected_socket) {
    // send a response back.
    int customer_id = 0, order_number = 0, laptop_type = 0, engineer = 0, expert = 0;

    // building the data stream.
    std::stringstream ss;
    ss << customer_id << " " << order_number << " " << laptop_type << " " << engineer << " " << expert;

    write(connected_socket , ss.str().c_str() , strlen(ss.str().c_str()));
}



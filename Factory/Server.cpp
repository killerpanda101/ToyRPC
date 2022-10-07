//
// Created by parijat chatterjee on 10/2/22.
//

#include "../Networking/ServerTCP.h"

// take user input
#define PORT 6969

int main(){
    // initialize the TCP server variables.
    Networking::ServerTCP ss = *new Networking::ServerTCP(6969);

    // To-do initiate the Expert Engineer pool.


    // starting the server infinite loop.
    ss.start();
}
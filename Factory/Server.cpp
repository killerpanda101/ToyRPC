//
// Created by parijat chatterjee on 10/2/22.
//

#include "../Networking/ServerTCP.h"

int main(int argc, char **argv){

    int port = atoi(argv[1]);
    // initialize the TCP server variables.
    Networking::ServerTCP ss = *new Networking::ServerTCP(port);

    // To-do initiate the Expert Engineer pool.


    // starting the server infinite loop.
    ss.start();

    return 0;
}
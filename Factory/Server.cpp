//
// Created by parijat chatterjee on 10/2/22.
//

#include "../Networking/ServerTCP.h"
#include "./ExpertPool.h"

#define FAILED (-1)



int main(int argc, char **argv){

    if (argc < 3) {
        std::cout << "Usage: ./server [port #] [# experts]\n";
        return FAILED;
    }

    int port = atoi(argv[1]);
    // initialize the TCP server variables.
    Networking::ServerTCP ss = *new Networking::ServerTCP(port);

    // To-do initiate the ExpertPool Engineer pool.
    int num_threads = atoi(argv[2]);
    std::vector<std::thread> thread_pool;
    for (int i = 0; i < num_threads; i++)
    {
        thread_pool.push_back(std::thread(&ExpertPool::infinite_loop_func, &expert_pool, i));
    }

    // starting the server infinite loop.
    ss.start(num_threads);

    return 0;
}
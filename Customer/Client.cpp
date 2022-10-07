//
// Created by parijat chatterjee on 9/30/22.
//

#include "Client.h"

#include <utility>
#define FAILED -1

void spawn_client_thread(std::string host, int port, int customer_id, int orders, int laptop_type) {

    ClientStub *stub = new ClientStub();
    stub->Init(std::move(host), port);
    for (int i = 0; i < orders; i++) {
        stub->Order(customer_id, i, laptop_type);
    }
}

int main(int argc, char **argv) {

    if (argc < 6) {
        std::cout << "Usage: ./client [ ip addr ] [ port #] [# customers ] [# orders ] [ laptop type ]\n";
        return FAILED;
    }

    std::string host = argv[1];
    int port = atoi(argv[2]);
    int customers = atoi(argv[3]);
    int orders = atoi(argv[4]);
    int laptop_type = atoi(argv[5]);

    std::vector<std::thread> threads(customers);
    for (int i = 0; i < customers; i++) {
        threads.emplace_back(std::thread(spawn_client_thread, host, port, i, orders, laptop_type));
    }

    for (auto& th : threads) {
        if (th.joinable()) {
            th.join();
        }
    }
    return 0;
}
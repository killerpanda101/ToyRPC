//
// Created by parijat chatterjee on 9/30/22.
//

#include "ClientStub.h"

#include <utility>
#include <numeric>
#include <thread>

#define FAILED (-1)

std::vector<long> elapsed_time;

void spawn_client_thread(std::string host, int port, int customer_id, int orders, int laptop_type) {
    // connect to socket
    ClientStub stub = *new ClientStub();
    stub.Init(host, port);

    // make orders
    for (int i = 0; i < orders; i++) {
        std::chrono::high_resolution_clock::time_point start = std::chrono::high_resolution_clock::now();
        std::vector<int> laptop = stub.Order(customer_id, i, laptop_type);
        std::chrono::high_resolution_clock::time_point end = std::chrono::high_resolution_clock::now();
        long diff = std::chrono::duration_cast<std::chrono::microseconds>(end-start).count();
        elapsed_time.push_back(diff);
        assert(laptop.size() == 5);
    }

    stub.CloseSocket();

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

    std::chrono::high_resolution_clock::time_point start_t = std::chrono::high_resolution_clock::now();

    std::vector<std::thread> threads(customers);

    for (int i = 0; i < customers; i++) {
        threads.push_back(std::thread(spawn_client_thread, host, port, i, orders, laptop_type));
    }

    for (auto &th: threads) {
        if (th.joinable()) {
            th.join();
        }
    }
    std::chrono::high_resolution_clock::time_point end_t = std::chrono::high_resolution_clock::now();

    long min = 0;
    long max = INT32_MAX;
    for (int i = 0; i < elapsed_time.size(); i++) {
            max = std::max(max, elapsed_time[i]);
            min = std::min(min, elapsed_time[i]);
        }

    long avg = std::accumulate(elapsed_time.begin(), elapsed_time.end(), 0.0) / elapsed_time.size();

    long diff_t = std::chrono::duration_cast<std::chrono::microseconds>(end_t-start_t).count();

    float throughput = (customers*orders*1000000)/(diff_t);

    std::cout<<avg<<'\t'<<min<<'\t'<<max<<'\t'<<throughput;

    return 0;
    }





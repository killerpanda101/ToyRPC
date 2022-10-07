//
// Created by parijat chatterjee on 9/30/22.
//

#include "Client.h"

#include <utility>
#include <numeric>

#define FAILED -1

using namespace std::chrono;

std::vector<std::vector<high_resolution_clock::time_point>> order_times;
std::vector<std::vector<high_resolution_clock::time_point>> receive_times;

void spawn_client_thread(std::string host, int port, int customer_id, int orders, int laptop_type) {

    ClientStub *stub = new ClientStub();
    stub->Init(std::move(host), port);
    std::vector<high_resolution_clock::time_point> order_times_for_current_client;

    for (int i = 0; i < orders; i++) {
        stub->Order(customer_id, i, laptop_type);
        order_times_for_current_client.push_back(high_resolution_clock::now());
    }
    order_times[customer_id] = order_times_for_current_client;

    stub->Close();
}

void receive_shipment(int customer_id, int order_id, int engineer_id) {
    receive_times[customer_id][order_id] = high_resolution_clock::now();
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


    for (auto &th: threads) {
        if (th.joinable()) {
            th.join();
        }
    }

    std::vector<std::vector<int>> elapsed_times;
    int min = 0;
    int max = INT32_MAX;
    for (int i = 0; i < customers; i++) {
        std::vector<int> elapsed_time_for_cust;
        for (int j = 0; j < orders; j++) {
            int diff = duration_cast<microseconds>(receive_times[i][j] - order_times[i][j]).count();
            elapsed_time_for_cust[j] = diff;
            max = std::max(max, diff);
            min = std::min(max, diff);
        }
        elapsed_times[i] = elapsed_time_for_cust;
    }
    auto const count = static_cast<float>(elapsed_times.size());
    
    int avg = std::accumulate(elapsed_times.begin(), elapsed_times.end(), 0.0) / count;
    
    printf ("%d\t%d\t%d\t%d", avg, min, max, 100 );

    return 0;
}
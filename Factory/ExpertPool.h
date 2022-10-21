//
// Created by parijat chatterjee on 10/17/22.
//

#ifndef TOYRPC_EXPERTPOOL_H
#define TOYRPC_EXPERTPOOL_H

#include <queue>
#include <functional>
#include <mutex>
#include <condition_variable>
#include <atomic>
#include <cassert>
#include "LaptopInfo.h"

class ExpertPool
{

private:
    std::queue<std::unique_ptr<ExpertRequest>> m_function_queue;
    std::mutex m_lock;
    std::condition_variable m_data_condition;
    std::atomic<bool> m_accept_functions;

public:

    ExpertPool();
    ~ExpertPool();
    void push(std::unique_ptr<ExpertRequest> req);
    void infinite_loop_func(int id);
};

extern ExpertPool expert_pool;


#endif //TOYRPC_EXPERTPOOL_H

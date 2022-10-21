//
// Created by parijat chatterjee on 10/17/22.
//

#include <thread>
#include "ExpertPool.h"

ExpertPool::ExpertPool() : m_function_queue(), m_lock(), m_data_condition(), m_accept_functions(true){

}

ExpertPool::~ExpertPool() {

}

void ExpertPool::push(std::unique_ptr<ExpertRequest> req)
{
    std::unique_lock<std::mutex> lock(m_lock);
    m_function_queue.push(std::move(req));
    // when we send the notification immediately, the consumer will try to get the lock , so unlock asap
    lock.unlock();
    m_data_condition.notify_one();
}


void ExpertPool::infinite_loop_func(int id)
{
    std::unique_ptr<ExpertRequest> req;

    while (true)
    {
        {
            std::unique_lock<std::mutex> lock(m_lock);
            m_data_condition.wait(lock, [this]() { return !m_function_queue.empty() || !m_accept_functions; });
            if (!m_accept_functions && m_function_queue.empty()) {
                //lock will be release automatically.
                //finish the thread loop and let it join in the main thread.
                return;
            }
            req = std::move(m_function_queue.front());
            m_function_queue.pop();
            //release the lock
        }

            //sleep
            std::this_thread::sleep_for(std::chrono::microseconds(100));
            req->expert_id.set_value(id);
        }


}



ExpertPool expert_pool;



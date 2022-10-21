//
// Created by parijat chatterjee on 10/21/22.
//

#ifndef TOYRPC_LAPTOPINFO_H
#define TOYRPC_LAPTOPINFO_H

#include <future>

struct ExpertRequest {
    int customer_id;
    int order_number;
    int laptop_type;
    int engineer_id;
    std::promise<int> expert_id;
};

#endif //TOYRPC_LAPTOPINFO_H

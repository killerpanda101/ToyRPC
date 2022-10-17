//
// Created by parijat chatterjee on 10/17/22.
//

#ifndef TOYRPC_MESSAGE_H
#define TOYRPC_MESSAGE_H

#include <vector>

void OrderMarshal(char *buffer, int customer_id, int order_number, int laptop_type);
std::vector<int> OrderUnmarshal(char *buffer);
void LaptopMarshal(char *buffer, int customer_id, int order_number, int laptop_type, int engineer_id, int expert_id);
std::vector<int> LaptopUnmarshal(char *buffer);

#endif //TOYRPC_MESSAGE_H

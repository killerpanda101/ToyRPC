//
// Created by parijat chatterjee on 10/17/22.
//

#include "Message.h"
#include <cstring>
#include <iostream>
#include <arpa/inet.h>



void OrderMarshal(char *buffer, int customer_id, int order_number, int laptop_type) {
    int net_customer_id = htonl(customer_id);
    int net_order_number = htonl(order_number);
    int net_laptop_type = htonl(laptop_type);
    int offset = 0;
    memcpy(buffer + offset, &net_customer_id, sizeof(net_customer_id));
    offset += sizeof(net_customer_id);
    memcpy(buffer + offset, &net_order_number, sizeof(net_order_number));
    offset += sizeof(net_order_number);
    memcpy(buffer + offset, &net_laptop_type, sizeof(net_laptop_type));
}

std::vector<int> OrderUnmarshal(char *buffer) {
    std::vector<int> out;
    int net_customer_id;
    int net_order_number;
    int net_laptop_type;
    int offset = 0;
    memcpy(&net_customer_id, buffer + offset, sizeof(net_customer_id));
    offset += sizeof(net_customer_id);
    memcpy(&net_order_number, buffer + offset, sizeof(net_order_number));
    offset += sizeof(net_order_number);
    memcpy(&net_laptop_type, buffer + offset, sizeof(net_laptop_type));

    int customer_id = ntohl(net_customer_id);
    int order_number = ntohl(net_order_number);
    int laptop_type = ntohl(net_laptop_type);

    out.push_back(customer_id);
    out.push_back(order_number);
    out.push_back(laptop_type);

    return out;
}

void LaptopMarshal(char *buffer, int customer_id, int order_number, int laptop_type, int engineer_id, int expert_id) {
    int net_customer_id = htonl(customer_id);
    int net_order_number = htonl(order_number);
    int net_laptop_type = htonl(laptop_type);
    int net_engineer_id = htonl(engineer_id);
    int net_expert_id = htonl(expert_id);
    int offset = 0;

    memcpy(buffer + offset, &net_customer_id, sizeof(net_customer_id));
    offset += sizeof(net_customer_id);
    memcpy(buffer + offset, &net_order_number, sizeof(net_order_number));
    offset += sizeof(net_order_number);
    memcpy(buffer + offset, &net_laptop_type, sizeof(net_laptop_type));
    offset += sizeof(net_laptop_type);
    memcpy(buffer + offset, &net_engineer_id, sizeof(net_engineer_id));
    offset += sizeof(net_engineer_id);
    memcpy(buffer + offset, &net_expert_id, sizeof(net_expert_id));
}

std::vector<int> LaptopUnmarshal(char *buffer) {
    std::vector<int> out;
    int net_customer_id;
    int net_order_number;
    int net_laptop_type;
    int net_engineer_id;
    int net_expert_id;
    int offset = 0;

    memcpy(&net_customer_id, buffer + offset, sizeof(net_customer_id));
    offset += sizeof(net_customer_id);
    memcpy(&net_order_number, buffer + offset, sizeof(net_order_number));
    offset += sizeof(net_order_number);
    memcpy(&net_laptop_type, buffer + offset, sizeof(net_laptop_type));
    offset += sizeof(net_laptop_type);
    memcpy(&net_engineer_id, buffer + offset, sizeof(net_engineer_id));
    offset += sizeof(net_engineer_id);
    memcpy(&net_expert_id, buffer + offset, sizeof(net_expert_id));

    int customer_id = ntohl(net_customer_id);
    int order_number = ntohl(net_order_number);
    int laptop_type = ntohl(net_laptop_type);
    int engineer_id = ntohl(net_engineer_id);
    int expert_id = ntohl(net_expert_id);

    out.push_back(customer_id);
    out.push_back(order_number);
    out.push_back(laptop_type);
    out.push_back(engineer_id);
    out.push_back(expert_id);

    return out;
}
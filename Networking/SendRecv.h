//
// Created by parijat chatterjee on 10/17/22.
//

#ifndef TOYRPC_SENDRECV_H
#define TOYRPC_SENDRECV_H

int Send(int fd_, char *buffer, int size, int flags);
int Recv(int fd_, char *buffer, int size, int flags);
void Close(int fd_);

#endif //TOYRPC_SENDRECV_H

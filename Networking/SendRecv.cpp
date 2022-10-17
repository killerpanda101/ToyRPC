//
// Created by parijat chatterjee on 10/17/22.
//

#include "SendRecv.h"

#include <iostream>
#include <cassert>
#include <unistd.h>
#include <arpa/inet.h>


int Send(int fd_, char *buffer, int size, int flags) {
    int bytes_written;
    int offset = 0;
    while (size > 0) {
        bytes_written = send(fd_, buffer + offset, size, flags);
        if (bytes_written < 0) {
            /*
            if (errno == EAGAIN || errno == EWOULDBLOCK) {
                perror("ERROR: send retry");
                continue;
            }
            */
            perror("ERROR: failed to send");
            Close(fd_);
            return 0;
        }
        size -= bytes_written;
        offset += bytes_written;
        assert(size >= 0);
    }
    return 1;
}

int Recv(int fd_, char *buffer, int size, int flags) {
    int bytes_read;
    int offset = 0;
    while (size > 0) {
        bytes_read = recv(fd_, buffer + offset, size, flags);
        if (bytes_read <= 0) {
            /*
            if (errno == EAGAIN || errno == EWOULDBLOCK) {
                //perror("ERROR: recv retry");
                continue;
            }
            */
            //perror("ERROR: failed to recv");
            Close(fd_);
            return 0;
        }
        assert(bytes_read != 0);

        size -= bytes_read;
        offset += bytes_read;
        assert(size >= 0);
    }
    return 1;
}

void Close(int fd_) {
    shutdown(fd_, SHUT_RDWR);
    close(fd_);
}

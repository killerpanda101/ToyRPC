cmake_minimum_required(VERSION 3.16.3)
project(ToyRPC)

set(CMAKE_CXX_STANDARD 11)
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

add_executable(client Customer/Client.cpp ./Customer/ClientStub.h ./Customer/ClientStub.cpp ./Networking/Message.cpp ./Networking/Message.h ./Networking/SendRecv.h ./Networking/SendRecv.cpp)

add_executable(server Factory/Server.cpp ./Networking/ServerTCP.cpp ./Networking/ServerTCP.h Factory/Engineer.cpp Factory/Engineer.h Factory/ServerStub.cpp Factory/ServerStub.h ./Networking/Message.cpp ./Networking/Message.h ./Networking/SendRecv.h ./Networking/SendRecv.cpp ./Factory/ExpertPool.h ./Factory/ExpertPool.cpp)

target_link_libraries(client PRIVATE Threads::Threads)
target_link_libraries(server PRIVATE Threads::Threads)
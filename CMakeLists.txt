cmake_minimum_required(VERSION 3.16.3)
project(ToyRPC)

set(CMAKE_CXX_STANDARD 11)
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

add_executable(client Customer/Client.cpp ./Networking/ClientTCP.h ./Networking/ClientTCP.cpp ./Customer/ClientStub.cpp ./Networking/ClientTCP.h)

add_executable(server Factory/Server.cpp ./Networking/ServerTCP.cpp ./Networking/ServerTCP.h Factory/Engineer.cpp Factory/Engineer.h Factory/ServerStub.cpp Factory/ServerStub.h)

target_link_libraries(client PRIVATE Threads::Threads)
target_link_libraries(server PRIVATE Threads::Threads)
cmake_minimum_required(VERSION 3.16.3)
project(ToyRPC)

set(CMAKE_CXX_STANDARD 11)
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

add_executable(TestClient Networking/TestClient.cpp ./Networking/ClientTCP.h ./Networking/ClientTCP.cpp)

add_executable(TestServer Networking/TestServer.cpp ./Networking/ServerTCP.h ./Networking/ServerTCP.cpp)

add_executable(client Customer/Client.cpp ./Networking/ClientTCP.h ./Networking/ClientTCP.cpp ./Customer/ClientStub.cpp)
target_link_libraries(client PRIVATE Threads::Threads)
target_link_libraries(TestServer PRIVATE Threads::Threads)

cmake_minimum_required(VERSION 3.23)
project(ToyRPC)

set(CMAKE_CXX_STANDARD 11)

add_executable(TestClient Networking/TestClient.cpp ./Networking/ClientTCP.h ./Networking/ClientTCP.cpp)

add_executable(TestServer Networking/TestServer.cpp ./Networking/ServerTCP.h ./Networking/ServerTCP.cpp)


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/parijatchatterjee/Desktop/ToyRPC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/parijatchatterjee/Desktop/ToyRPC

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/opt/homebrew/Cellar/cmake/3.24.2/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/opt/homebrew/Cellar/cmake/3.24.2/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles /Users/parijatchatterjee/Desktop/ToyRPC//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named client

# Build rule for target.
client: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 client
.PHONY : client

# fast build rule for target.
client/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/build
.PHONY : client/fast

#=============================================================================
# Target rules for targets named server

# Build rule for target.
server: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 server
.PHONY : server

# fast build rule for target.
server/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/build
.PHONY : server/fast

Customer/Client.o: Customer/Client.cpp.o
.PHONY : Customer/Client.o

# target to build an object file
Customer/Client.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/Customer/Client.cpp.o
.PHONY : Customer/Client.cpp.o

Customer/Client.i: Customer/Client.cpp.i
.PHONY : Customer/Client.i

# target to preprocess a source file
Customer/Client.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/Customer/Client.cpp.i
.PHONY : Customer/Client.cpp.i

Customer/Client.s: Customer/Client.cpp.s
.PHONY : Customer/Client.s

# target to generate assembly for a file
Customer/Client.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/Customer/Client.cpp.s
.PHONY : Customer/Client.cpp.s

Customer/ClientStub.o: Customer/ClientStub.cpp.o
.PHONY : Customer/ClientStub.o

# target to build an object file
Customer/ClientStub.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/Customer/ClientStub.cpp.o
.PHONY : Customer/ClientStub.cpp.o

Customer/ClientStub.i: Customer/ClientStub.cpp.i
.PHONY : Customer/ClientStub.i

# target to preprocess a source file
Customer/ClientStub.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/Customer/ClientStub.cpp.i
.PHONY : Customer/ClientStub.cpp.i

Customer/ClientStub.s: Customer/ClientStub.cpp.s
.PHONY : Customer/ClientStub.s

# target to generate assembly for a file
Customer/ClientStub.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/Customer/ClientStub.cpp.s
.PHONY : Customer/ClientStub.cpp.s

Factory/Engineer.o: Factory/Engineer.cpp.o
.PHONY : Factory/Engineer.o

# target to build an object file
Factory/Engineer.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Factory/Engineer.cpp.o
.PHONY : Factory/Engineer.cpp.o

Factory/Engineer.i: Factory/Engineer.cpp.i
.PHONY : Factory/Engineer.i

# target to preprocess a source file
Factory/Engineer.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Factory/Engineer.cpp.i
.PHONY : Factory/Engineer.cpp.i

Factory/Engineer.s: Factory/Engineer.cpp.s
.PHONY : Factory/Engineer.s

# target to generate assembly for a file
Factory/Engineer.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Factory/Engineer.cpp.s
.PHONY : Factory/Engineer.cpp.s

Factory/ExpertPool.o: Factory/ExpertPool.cpp.o
.PHONY : Factory/ExpertPool.o

# target to build an object file
Factory/ExpertPool.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Factory/ExpertPool.cpp.o
.PHONY : Factory/ExpertPool.cpp.o

Factory/ExpertPool.i: Factory/ExpertPool.cpp.i
.PHONY : Factory/ExpertPool.i

# target to preprocess a source file
Factory/ExpertPool.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Factory/ExpertPool.cpp.i
.PHONY : Factory/ExpertPool.cpp.i

Factory/ExpertPool.s: Factory/ExpertPool.cpp.s
.PHONY : Factory/ExpertPool.s

# target to generate assembly for a file
Factory/ExpertPool.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Factory/ExpertPool.cpp.s
.PHONY : Factory/ExpertPool.cpp.s

Factory/Server.o: Factory/Server.cpp.o
.PHONY : Factory/Server.o

# target to build an object file
Factory/Server.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Factory/Server.cpp.o
.PHONY : Factory/Server.cpp.o

Factory/Server.i: Factory/Server.cpp.i
.PHONY : Factory/Server.i

# target to preprocess a source file
Factory/Server.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Factory/Server.cpp.i
.PHONY : Factory/Server.cpp.i

Factory/Server.s: Factory/Server.cpp.s
.PHONY : Factory/Server.s

# target to generate assembly for a file
Factory/Server.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Factory/Server.cpp.s
.PHONY : Factory/Server.cpp.s

Factory/ServerStub.o: Factory/ServerStub.cpp.o
.PHONY : Factory/ServerStub.o

# target to build an object file
Factory/ServerStub.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Factory/ServerStub.cpp.o
.PHONY : Factory/ServerStub.cpp.o

Factory/ServerStub.i: Factory/ServerStub.cpp.i
.PHONY : Factory/ServerStub.i

# target to preprocess a source file
Factory/ServerStub.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Factory/ServerStub.cpp.i
.PHONY : Factory/ServerStub.cpp.i

Factory/ServerStub.s: Factory/ServerStub.cpp.s
.PHONY : Factory/ServerStub.s

# target to generate assembly for a file
Factory/ServerStub.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Factory/ServerStub.cpp.s
.PHONY : Factory/ServerStub.cpp.s

Networking/Message.o: Networking/Message.cpp.o
.PHONY : Networking/Message.o

# target to build an object file
Networking/Message.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/Networking/Message.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Networking/Message.cpp.o
.PHONY : Networking/Message.cpp.o

Networking/Message.i: Networking/Message.cpp.i
.PHONY : Networking/Message.i

# target to preprocess a source file
Networking/Message.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/Networking/Message.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Networking/Message.cpp.i
.PHONY : Networking/Message.cpp.i

Networking/Message.s: Networking/Message.cpp.s
.PHONY : Networking/Message.s

# target to generate assembly for a file
Networking/Message.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/Networking/Message.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Networking/Message.cpp.s
.PHONY : Networking/Message.cpp.s

Networking/SendRecv.o: Networking/SendRecv.cpp.o
.PHONY : Networking/SendRecv.o

# target to build an object file
Networking/SendRecv.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/Networking/SendRecv.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Networking/SendRecv.cpp.o
.PHONY : Networking/SendRecv.cpp.o

Networking/SendRecv.i: Networking/SendRecv.cpp.i
.PHONY : Networking/SendRecv.i

# target to preprocess a source file
Networking/SendRecv.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/Networking/SendRecv.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Networking/SendRecv.cpp.i
.PHONY : Networking/SendRecv.cpp.i

Networking/SendRecv.s: Networking/SendRecv.cpp.s
.PHONY : Networking/SendRecv.s

# target to generate assembly for a file
Networking/SendRecv.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/Networking/SendRecv.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Networking/SendRecv.cpp.s
.PHONY : Networking/SendRecv.cpp.s

Networking/ServerTCP.o: Networking/ServerTCP.cpp.o
.PHONY : Networking/ServerTCP.o

# target to build an object file
Networking/ServerTCP.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Networking/ServerTCP.cpp.o
.PHONY : Networking/ServerTCP.cpp.o

Networking/ServerTCP.i: Networking/ServerTCP.cpp.i
.PHONY : Networking/ServerTCP.i

# target to preprocess a source file
Networking/ServerTCP.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Networking/ServerTCP.cpp.i
.PHONY : Networking/ServerTCP.cpp.i

Networking/ServerTCP.s: Networking/ServerTCP.cpp.s
.PHONY : Networking/ServerTCP.s

# target to generate assembly for a file
Networking/ServerTCP.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/Networking/ServerTCP.cpp.s
.PHONY : Networking/ServerTCP.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... client"
	@echo "... server"
	@echo "... Customer/Client.o"
	@echo "... Customer/Client.i"
	@echo "... Customer/Client.s"
	@echo "... Customer/ClientStub.o"
	@echo "... Customer/ClientStub.i"
	@echo "... Customer/ClientStub.s"
	@echo "... Factory/Engineer.o"
	@echo "... Factory/Engineer.i"
	@echo "... Factory/Engineer.s"
	@echo "... Factory/ExpertPool.o"
	@echo "... Factory/ExpertPool.i"
	@echo "... Factory/ExpertPool.s"
	@echo "... Factory/Server.o"
	@echo "... Factory/Server.i"
	@echo "... Factory/Server.s"
	@echo "... Factory/ServerStub.o"
	@echo "... Factory/ServerStub.i"
	@echo "... Factory/ServerStub.s"
	@echo "... Networking/Message.o"
	@echo "... Networking/Message.i"
	@echo "... Networking/Message.s"
	@echo "... Networking/SendRecv.o"
	@echo "... Networking/SendRecv.i"
	@echo "... Networking/SendRecv.s"
	@echo "... Networking/ServerTCP.o"
	@echo "... Networking/ServerTCP.i"
	@echo "... Networking/ServerTCP.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system


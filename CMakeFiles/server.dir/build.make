# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

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

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/Factory/Server.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/Factory/Server.cpp.o: Factory/Server.cpp
CMakeFiles/server.dir/Factory/Server.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server.dir/Factory/Server.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/Factory/Server.cpp.o -MF CMakeFiles/server.dir/Factory/Server.cpp.o.d -o CMakeFiles/server.dir/Factory/Server.cpp.o -c /Users/parijatchatterjee/Desktop/ToyRPC/Factory/Server.cpp

CMakeFiles/server.dir/Factory/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/Factory/Server.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/parijatchatterjee/Desktop/ToyRPC/Factory/Server.cpp > CMakeFiles/server.dir/Factory/Server.cpp.i

CMakeFiles/server.dir/Factory/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/Factory/Server.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/parijatchatterjee/Desktop/ToyRPC/Factory/Server.cpp -o CMakeFiles/server.dir/Factory/Server.cpp.s

CMakeFiles/server.dir/Networking/ServerTCP.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/Networking/ServerTCP.cpp.o: Networking/ServerTCP.cpp
CMakeFiles/server.dir/Networking/ServerTCP.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/server.dir/Networking/ServerTCP.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/Networking/ServerTCP.cpp.o -MF CMakeFiles/server.dir/Networking/ServerTCP.cpp.o.d -o CMakeFiles/server.dir/Networking/ServerTCP.cpp.o -c /Users/parijatchatterjee/Desktop/ToyRPC/Networking/ServerTCP.cpp

CMakeFiles/server.dir/Networking/ServerTCP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/Networking/ServerTCP.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/parijatchatterjee/Desktop/ToyRPC/Networking/ServerTCP.cpp > CMakeFiles/server.dir/Networking/ServerTCP.cpp.i

CMakeFiles/server.dir/Networking/ServerTCP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/Networking/ServerTCP.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/parijatchatterjee/Desktop/ToyRPC/Networking/ServerTCP.cpp -o CMakeFiles/server.dir/Networking/ServerTCP.cpp.s

CMakeFiles/server.dir/Factory/Engineer.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/Factory/Engineer.cpp.o: Factory/Engineer.cpp
CMakeFiles/server.dir/Factory/Engineer.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/server.dir/Factory/Engineer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/Factory/Engineer.cpp.o -MF CMakeFiles/server.dir/Factory/Engineer.cpp.o.d -o CMakeFiles/server.dir/Factory/Engineer.cpp.o -c /Users/parijatchatterjee/Desktop/ToyRPC/Factory/Engineer.cpp

CMakeFiles/server.dir/Factory/Engineer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/Factory/Engineer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/parijatchatterjee/Desktop/ToyRPC/Factory/Engineer.cpp > CMakeFiles/server.dir/Factory/Engineer.cpp.i

CMakeFiles/server.dir/Factory/Engineer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/Factory/Engineer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/parijatchatterjee/Desktop/ToyRPC/Factory/Engineer.cpp -o CMakeFiles/server.dir/Factory/Engineer.cpp.s

CMakeFiles/server.dir/Factory/ServerStub.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/Factory/ServerStub.cpp.o: Factory/ServerStub.cpp
CMakeFiles/server.dir/Factory/ServerStub.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/server.dir/Factory/ServerStub.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/Factory/ServerStub.cpp.o -MF CMakeFiles/server.dir/Factory/ServerStub.cpp.o.d -o CMakeFiles/server.dir/Factory/ServerStub.cpp.o -c /Users/parijatchatterjee/Desktop/ToyRPC/Factory/ServerStub.cpp

CMakeFiles/server.dir/Factory/ServerStub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/Factory/ServerStub.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/parijatchatterjee/Desktop/ToyRPC/Factory/ServerStub.cpp > CMakeFiles/server.dir/Factory/ServerStub.cpp.i

CMakeFiles/server.dir/Factory/ServerStub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/Factory/ServerStub.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/parijatchatterjee/Desktop/ToyRPC/Factory/ServerStub.cpp -o CMakeFiles/server.dir/Factory/ServerStub.cpp.s

CMakeFiles/server.dir/Networking/Message.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/Networking/Message.cpp.o: Networking/Message.cpp
CMakeFiles/server.dir/Networking/Message.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/server.dir/Networking/Message.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/Networking/Message.cpp.o -MF CMakeFiles/server.dir/Networking/Message.cpp.o.d -o CMakeFiles/server.dir/Networking/Message.cpp.o -c /Users/parijatchatterjee/Desktop/ToyRPC/Networking/Message.cpp

CMakeFiles/server.dir/Networking/Message.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/Networking/Message.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/parijatchatterjee/Desktop/ToyRPC/Networking/Message.cpp > CMakeFiles/server.dir/Networking/Message.cpp.i

CMakeFiles/server.dir/Networking/Message.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/Networking/Message.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/parijatchatterjee/Desktop/ToyRPC/Networking/Message.cpp -o CMakeFiles/server.dir/Networking/Message.cpp.s

CMakeFiles/server.dir/Networking/SendRecv.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/Networking/SendRecv.cpp.o: Networking/SendRecv.cpp
CMakeFiles/server.dir/Networking/SendRecv.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/server.dir/Networking/SendRecv.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/Networking/SendRecv.cpp.o -MF CMakeFiles/server.dir/Networking/SendRecv.cpp.o.d -o CMakeFiles/server.dir/Networking/SendRecv.cpp.o -c /Users/parijatchatterjee/Desktop/ToyRPC/Networking/SendRecv.cpp

CMakeFiles/server.dir/Networking/SendRecv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/Networking/SendRecv.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/parijatchatterjee/Desktop/ToyRPC/Networking/SendRecv.cpp > CMakeFiles/server.dir/Networking/SendRecv.cpp.i

CMakeFiles/server.dir/Networking/SendRecv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/Networking/SendRecv.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/parijatchatterjee/Desktop/ToyRPC/Networking/SendRecv.cpp -o CMakeFiles/server.dir/Networking/SendRecv.cpp.s

CMakeFiles/server.dir/Factory/ExpertPool.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/Factory/ExpertPool.cpp.o: Factory/ExpertPool.cpp
CMakeFiles/server.dir/Factory/ExpertPool.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/server.dir/Factory/ExpertPool.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/Factory/ExpertPool.cpp.o -MF CMakeFiles/server.dir/Factory/ExpertPool.cpp.o.d -o CMakeFiles/server.dir/Factory/ExpertPool.cpp.o -c /Users/parijatchatterjee/Desktop/ToyRPC/Factory/ExpertPool.cpp

CMakeFiles/server.dir/Factory/ExpertPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/Factory/ExpertPool.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/parijatchatterjee/Desktop/ToyRPC/Factory/ExpertPool.cpp > CMakeFiles/server.dir/Factory/ExpertPool.cpp.i

CMakeFiles/server.dir/Factory/ExpertPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/Factory/ExpertPool.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/parijatchatterjee/Desktop/ToyRPC/Factory/ExpertPool.cpp -o CMakeFiles/server.dir/Factory/ExpertPool.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/Factory/Server.cpp.o" \
"CMakeFiles/server.dir/Networking/ServerTCP.cpp.o" \
"CMakeFiles/server.dir/Factory/Engineer.cpp.o" \
"CMakeFiles/server.dir/Factory/ServerStub.cpp.o" \
"CMakeFiles/server.dir/Networking/Message.cpp.o" \
"CMakeFiles/server.dir/Networking/SendRecv.cpp.o" \
"CMakeFiles/server.dir/Factory/ExpertPool.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

server: CMakeFiles/server.dir/Factory/Server.cpp.o
server: CMakeFiles/server.dir/Networking/ServerTCP.cpp.o
server: CMakeFiles/server.dir/Factory/Engineer.cpp.o
server: CMakeFiles/server.dir/Factory/ServerStub.cpp.o
server: CMakeFiles/server.dir/Networking/Message.cpp.o
server: CMakeFiles/server.dir/Networking/SendRecv.cpp.o
server: CMakeFiles/server.dir/Factory/ExpertPool.cpp.o
server: CMakeFiles/server.dir/build.make
server: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: server
.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	cd /Users/parijatchatterjee/Desktop/ToyRPC && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/parijatchatterjee/Desktop/ToyRPC /Users/parijatchatterjee/Desktop/ToyRPC /Users/parijatchatterjee/Desktop/ToyRPC /Users/parijatchatterjee/Desktop/ToyRPC /Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server.dir/depend


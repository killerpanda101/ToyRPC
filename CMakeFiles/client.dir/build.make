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
include CMakeFiles/client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/client.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/client.dir/flags.make

CMakeFiles/client.dir/Customer/Client.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/Customer/Client.cpp.o: Customer/Client.cpp
CMakeFiles/client.dir/Customer/Client.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/client.dir/Customer/Client.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/Customer/Client.cpp.o -MF CMakeFiles/client.dir/Customer/Client.cpp.o.d -o CMakeFiles/client.dir/Customer/Client.cpp.o -c /Users/parijatchatterjee/Desktop/ToyRPC/Customer/Client.cpp

CMakeFiles/client.dir/Customer/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/Customer/Client.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/parijatchatterjee/Desktop/ToyRPC/Customer/Client.cpp > CMakeFiles/client.dir/Customer/Client.cpp.i

CMakeFiles/client.dir/Customer/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/Customer/Client.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/parijatchatterjee/Desktop/ToyRPC/Customer/Client.cpp -o CMakeFiles/client.dir/Customer/Client.cpp.s

CMakeFiles/client.dir/Networking/ClientTCP.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/Networking/ClientTCP.cpp.o: Networking/ClientTCP.cpp
CMakeFiles/client.dir/Networking/ClientTCP.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/client.dir/Networking/ClientTCP.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/Networking/ClientTCP.cpp.o -MF CMakeFiles/client.dir/Networking/ClientTCP.cpp.o.d -o CMakeFiles/client.dir/Networking/ClientTCP.cpp.o -c /Users/parijatchatterjee/Desktop/ToyRPC/Networking/ClientTCP.cpp

CMakeFiles/client.dir/Networking/ClientTCP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/Networking/ClientTCP.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/parijatchatterjee/Desktop/ToyRPC/Networking/ClientTCP.cpp > CMakeFiles/client.dir/Networking/ClientTCP.cpp.i

CMakeFiles/client.dir/Networking/ClientTCP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/Networking/ClientTCP.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/parijatchatterjee/Desktop/ToyRPC/Networking/ClientTCP.cpp -o CMakeFiles/client.dir/Networking/ClientTCP.cpp.s

CMakeFiles/client.dir/Customer/ClientStub.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/Customer/ClientStub.cpp.o: Customer/ClientStub.cpp
CMakeFiles/client.dir/Customer/ClientStub.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/client.dir/Customer/ClientStub.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/Customer/ClientStub.cpp.o -MF CMakeFiles/client.dir/Customer/ClientStub.cpp.o.d -o CMakeFiles/client.dir/Customer/ClientStub.cpp.o -c /Users/parijatchatterjee/Desktop/ToyRPC/Customer/ClientStub.cpp

CMakeFiles/client.dir/Customer/ClientStub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/Customer/ClientStub.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/parijatchatterjee/Desktop/ToyRPC/Customer/ClientStub.cpp > CMakeFiles/client.dir/Customer/ClientStub.cpp.i

CMakeFiles/client.dir/Customer/ClientStub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/Customer/ClientStub.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/parijatchatterjee/Desktop/ToyRPC/Customer/ClientStub.cpp -o CMakeFiles/client.dir/Customer/ClientStub.cpp.s

# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/Customer/Client.cpp.o" \
"CMakeFiles/client.dir/Networking/ClientTCP.cpp.o" \
"CMakeFiles/client.dir/Customer/ClientStub.cpp.o"

# External object files for target client
client_EXTERNAL_OBJECTS =

client: CMakeFiles/client.dir/Customer/Client.cpp.o
client: CMakeFiles/client.dir/Networking/ClientTCP.cpp.o
client: CMakeFiles/client.dir/Customer/ClientStub.cpp.o
client: CMakeFiles/client.dir/build.make
client: CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/client.dir/build: client
.PHONY : CMakeFiles/client.dir/build

CMakeFiles/client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/client.dir/clean

CMakeFiles/client.dir/depend:
	cd /Users/parijatchatterjee/Desktop/ToyRPC && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/parijatchatterjee/Desktop/ToyRPC /Users/parijatchatterjee/Desktop/ToyRPC /Users/parijatchatterjee/Desktop/ToyRPC /Users/parijatchatterjee/Desktop/ToyRPC /Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles/client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/client.dir/depend

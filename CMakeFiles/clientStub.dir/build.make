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
include CMakeFiles/clientStub.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/clientStub.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/clientStub.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/clientStub.dir/flags.make

CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.o: CMakeFiles/clientStub.dir/flags.make
CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.o: Stubs/TestClient.cpp
CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.o: CMakeFiles/clientStub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.o -MF CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.o.d -o CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.o -c /Users/parijatchatterjee/Desktop/ToyRPC/Stubs/TestClient.cpp

CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/parijatchatterjee/Desktop/ToyRPC/Stubs/TestClient.cpp > CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.i

CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/parijatchatterjee/Desktop/ToyRPC/Stubs/TestClient.cpp -o CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.s

CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.o: CMakeFiles/clientStub.dir/flags.make
CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.o: Stubs/ClientTCP.cpp
CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.o: CMakeFiles/clientStub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.o -MF CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.o.d -o CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.o -c /Users/parijatchatterjee/Desktop/ToyRPC/Stubs/ClientTCP.cpp

CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/parijatchatterjee/Desktop/ToyRPC/Stubs/ClientTCP.cpp > CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.i

CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/parijatchatterjee/Desktop/ToyRPC/Stubs/ClientTCP.cpp -o CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.s

# Object files for target clientStub
clientStub_OBJECTS = \
"CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.o" \
"CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.o"

# External object files for target clientStub
clientStub_EXTERNAL_OBJECTS =

clientStub: CMakeFiles/clientStub.dir/Stubs/TestClient.cpp.o
clientStub: CMakeFiles/clientStub.dir/Stubs/ClientTCP.cpp.o
clientStub: CMakeFiles/clientStub.dir/build.make
clientStub: CMakeFiles/clientStub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable clientStub"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clientStub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/clientStub.dir/build: clientStub
.PHONY : CMakeFiles/clientStub.dir/build

CMakeFiles/clientStub.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/clientStub.dir/cmake_clean.cmake
.PHONY : CMakeFiles/clientStub.dir/clean

CMakeFiles/clientStub.dir/depend:
	cd /Users/parijatchatterjee/Desktop/ToyRPC && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/parijatchatterjee/Desktop/ToyRPC /Users/parijatchatterjee/Desktop/ToyRPC /Users/parijatchatterjee/Desktop/ToyRPC /Users/parijatchatterjee/Desktop/ToyRPC /Users/parijatchatterjee/Desktop/ToyRPC/CMakeFiles/clientStub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/clientStub.dir/depend


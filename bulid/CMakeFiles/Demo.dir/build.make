# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wanghao/study_source/vs_te

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wanghao/study_source/vs_te/bulid

# Include any dependencies generated for this target.
include CMakeFiles/Demo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Demo.dir/flags.make

CMakeFiles/Demo.dir/main.cpp.o: CMakeFiles/Demo.dir/flags.make
CMakeFiles/Demo.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wanghao/study_source/vs_te/bulid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Demo.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Demo.dir/main.cpp.o -c /home/wanghao/study_source/vs_te/main.cpp

CMakeFiles/Demo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Demo.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wanghao/study_source/vs_te/main.cpp > CMakeFiles/Demo.dir/main.cpp.i

CMakeFiles/Demo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Demo.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wanghao/study_source/vs_te/main.cpp -o CMakeFiles/Demo.dir/main.cpp.s

CMakeFiles/Demo.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/Demo.dir/main.cpp.o.requires

CMakeFiles/Demo.dir/main.cpp.o.provides: CMakeFiles/Demo.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/Demo.dir/main.cpp.o.provides

CMakeFiles/Demo.dir/main.cpp.o.provides.build: CMakeFiles/Demo.dir/main.cpp.o


CMakeFiles/Demo.dir/src/tool.cpp.o: CMakeFiles/Demo.dir/flags.make
CMakeFiles/Demo.dir/src/tool.cpp.o: ../src/tool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wanghao/study_source/vs_te/bulid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Demo.dir/src/tool.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Demo.dir/src/tool.cpp.o -c /home/wanghao/study_source/vs_te/src/tool.cpp

CMakeFiles/Demo.dir/src/tool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Demo.dir/src/tool.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wanghao/study_source/vs_te/src/tool.cpp > CMakeFiles/Demo.dir/src/tool.cpp.i

CMakeFiles/Demo.dir/src/tool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Demo.dir/src/tool.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wanghao/study_source/vs_te/src/tool.cpp -o CMakeFiles/Demo.dir/src/tool.cpp.s

CMakeFiles/Demo.dir/src/tool.cpp.o.requires:

.PHONY : CMakeFiles/Demo.dir/src/tool.cpp.o.requires

CMakeFiles/Demo.dir/src/tool.cpp.o.provides: CMakeFiles/Demo.dir/src/tool.cpp.o.requires
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/tool.cpp.o.provides.build
.PHONY : CMakeFiles/Demo.dir/src/tool.cpp.o.provides

CMakeFiles/Demo.dir/src/tool.cpp.o.provides.build: CMakeFiles/Demo.dir/src/tool.cpp.o


# Object files for target Demo
Demo_OBJECTS = \
"CMakeFiles/Demo.dir/main.cpp.o" \
"CMakeFiles/Demo.dir/src/tool.cpp.o"

# External object files for target Demo
Demo_EXTERNAL_OBJECTS =

Demo: CMakeFiles/Demo.dir/main.cpp.o
Demo: CMakeFiles/Demo.dir/src/tool.cpp.o
Demo: CMakeFiles/Demo.dir/build.make
Demo: CMakeFiles/Demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wanghao/study_source/vs_te/bulid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Demo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Demo.dir/build: Demo

.PHONY : CMakeFiles/Demo.dir/build

CMakeFiles/Demo.dir/requires: CMakeFiles/Demo.dir/main.cpp.o.requires
CMakeFiles/Demo.dir/requires: CMakeFiles/Demo.dir/src/tool.cpp.o.requires

.PHONY : CMakeFiles/Demo.dir/requires

CMakeFiles/Demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Demo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Demo.dir/clean

CMakeFiles/Demo.dir/depend:
	cd /home/wanghao/study_source/vs_te/bulid && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wanghao/study_source/vs_te /home/wanghao/study_source/vs_te /home/wanghao/study_source/vs_te/bulid /home/wanghao/study_source/vs_te/bulid /home/wanghao/study_source/vs_te/bulid/CMakeFiles/Demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Demo.dir/depend


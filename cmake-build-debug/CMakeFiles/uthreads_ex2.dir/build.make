# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /usr/local/jetbrains/clion-2017.2.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /usr/local/jetbrains/clion-2017.2.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cs/usr/nir.zabari/safe/OS/uthreads_ex2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cs/usr/nir.zabari/safe/OS/uthreads_ex2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/uthreads_ex2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/uthreads_ex2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/uthreads_ex2.dir/flags.make

CMakeFiles/uthreads_ex2.dir/main.cpp.o: CMakeFiles/uthreads_ex2.dir/flags.make
CMakeFiles/uthreads_ex2.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/nir.zabari/safe/OS/uthreads_ex2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/uthreads_ex2.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uthreads_ex2.dir/main.cpp.o -c /cs/usr/nir.zabari/safe/OS/uthreads_ex2/main.cpp

CMakeFiles/uthreads_ex2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uthreads_ex2.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/nir.zabari/safe/OS/uthreads_ex2/main.cpp > CMakeFiles/uthreads_ex2.dir/main.cpp.i

CMakeFiles/uthreads_ex2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uthreads_ex2.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/nir.zabari/safe/OS/uthreads_ex2/main.cpp -o CMakeFiles/uthreads_ex2.dir/main.cpp.s

CMakeFiles/uthreads_ex2.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/uthreads_ex2.dir/main.cpp.o.requires

CMakeFiles/uthreads_ex2.dir/main.cpp.o.provides: CMakeFiles/uthreads_ex2.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/uthreads_ex2.dir/build.make CMakeFiles/uthreads_ex2.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/uthreads_ex2.dir/main.cpp.o.provides

CMakeFiles/uthreads_ex2.dir/main.cpp.o.provides.build: CMakeFiles/uthreads_ex2.dir/main.cpp.o


CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o: CMakeFiles/uthreads_ex2.dir/flags.make
CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o: ../uthreads.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/nir.zabari/safe/OS/uthreads_ex2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o -c /cs/usr/nir.zabari/safe/OS/uthreads_ex2/uthreads.cpp

CMakeFiles/uthreads_ex2.dir/uthreads.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uthreads_ex2.dir/uthreads.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/nir.zabari/safe/OS/uthreads_ex2/uthreads.cpp > CMakeFiles/uthreads_ex2.dir/uthreads.cpp.i

CMakeFiles/uthreads_ex2.dir/uthreads.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uthreads_ex2.dir/uthreads.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/nir.zabari/safe/OS/uthreads_ex2/uthreads.cpp -o CMakeFiles/uthreads_ex2.dir/uthreads.cpp.s

CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o.requires:

.PHONY : CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o.requires

CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o.provides: CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o.requires
	$(MAKE) -f CMakeFiles/uthreads_ex2.dir/build.make CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o.provides.build
.PHONY : CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o.provides

CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o.provides.build: CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o


# Object files for target uthreads_ex2
uthreads_ex2_OBJECTS = \
"CMakeFiles/uthreads_ex2.dir/main.cpp.o" \
"CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o"

# External object files for target uthreads_ex2
uthreads_ex2_EXTERNAL_OBJECTS =

uthreads_ex2: CMakeFiles/uthreads_ex2.dir/main.cpp.o
uthreads_ex2: CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o
uthreads_ex2: CMakeFiles/uthreads_ex2.dir/build.make
uthreads_ex2: CMakeFiles/uthreads_ex2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cs/usr/nir.zabari/safe/OS/uthreads_ex2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable uthreads_ex2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uthreads_ex2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/uthreads_ex2.dir/build: uthreads_ex2

.PHONY : CMakeFiles/uthreads_ex2.dir/build

CMakeFiles/uthreads_ex2.dir/requires: CMakeFiles/uthreads_ex2.dir/main.cpp.o.requires
CMakeFiles/uthreads_ex2.dir/requires: CMakeFiles/uthreads_ex2.dir/uthreads.cpp.o.requires

.PHONY : CMakeFiles/uthreads_ex2.dir/requires

CMakeFiles/uthreads_ex2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uthreads_ex2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uthreads_ex2.dir/clean

CMakeFiles/uthreads_ex2.dir/depend:
	cd /cs/usr/nir.zabari/safe/OS/uthreads_ex2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cs/usr/nir.zabari/safe/OS/uthreads_ex2 /cs/usr/nir.zabari/safe/OS/uthreads_ex2 /cs/usr/nir.zabari/safe/OS/uthreads_ex2/cmake-build-debug /cs/usr/nir.zabari/safe/OS/uthreads_ex2/cmake-build-debug /cs/usr/nir.zabari/safe/OS/uthreads_ex2/cmake-build-debug/CMakeFiles/uthreads_ex2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uthreads_ex2.dir/depend


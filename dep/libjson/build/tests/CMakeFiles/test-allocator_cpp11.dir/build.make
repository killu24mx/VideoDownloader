# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/test-allocator_cpp11.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/test-allocator_cpp11.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test-allocator_cpp11.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test-allocator_cpp11.dir/flags.make

tests/CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.o: tests/CMakeFiles/test-allocator_cpp11.dir/flags.make
tests/CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.o: /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/src/unit-allocator.cpp
tests/CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.o: tests/CMakeFiles/test-allocator_cpp11.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.o"
	cd /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.o -MF CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.o.d -o CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.o -c /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/src/unit-allocator.cpp

tests/CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.i"
	cd /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/src/unit-allocator.cpp > CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.i

tests/CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.s"
	cd /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/src/unit-allocator.cpp -o CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.s

# Object files for target test-allocator_cpp11
test__allocator_cpp11_OBJECTS = \
"CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.o"

# External object files for target test-allocator_cpp11
test__allocator_cpp11_EXTERNAL_OBJECTS = \
"/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests/CMakeFiles/test_main.dir/src/unit.cpp.o"

tests/test-allocator_cpp11: tests/CMakeFiles/test-allocator_cpp11.dir/src/unit-allocator.cpp.o
tests/test-allocator_cpp11: tests/CMakeFiles/test_main.dir/src/unit.cpp.o
tests/test-allocator_cpp11: tests/CMakeFiles/test-allocator_cpp11.dir/build.make
tests/test-allocator_cpp11: tests/CMakeFiles/test-allocator_cpp11.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-allocator_cpp11"
	cd /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-allocator_cpp11.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test-allocator_cpp11.dir/build: tests/test-allocator_cpp11
.PHONY : tests/CMakeFiles/test-allocator_cpp11.dir/build

tests/CMakeFiles/test-allocator_cpp11.dir/clean:
	cd /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test-allocator_cpp11.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test-allocator_cpp11.dir/clean

tests/CMakeFiles/test-allocator_cpp11.dir/depend:
	cd /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests/CMakeFiles/test-allocator_cpp11.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/test-allocator_cpp11.dir/depend


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
include tests/CMakeFiles/test-json_pointer_cpp20.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/test-json_pointer_cpp20.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test-json_pointer_cpp20.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test-json_pointer_cpp20.dir/flags.make

tests/CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.o: tests/CMakeFiles/test-json_pointer_cpp20.dir/flags.make
tests/CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.o: /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/src/unit-json_pointer.cpp
tests/CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.o: tests/CMakeFiles/test-json_pointer_cpp20.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.o"
	cd /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.o -MF CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.o.d -o CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.o -c /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/src/unit-json_pointer.cpp

tests/CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.i"
	cd /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/src/unit-json_pointer.cpp > CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.i

tests/CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.s"
	cd /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/src/unit-json_pointer.cpp -o CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.s

# Object files for target test-json_pointer_cpp20
test__json_pointer_cpp20_OBJECTS = \
"CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.o"

# External object files for target test-json_pointer_cpp20
test__json_pointer_cpp20_EXTERNAL_OBJECTS = \
"/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests/CMakeFiles/test_main.dir/src/unit.cpp.o"

tests/test-json_pointer_cpp20: tests/CMakeFiles/test-json_pointer_cpp20.dir/src/unit-json_pointer.cpp.o
tests/test-json_pointer_cpp20: tests/CMakeFiles/test_main.dir/src/unit.cpp.o
tests/test-json_pointer_cpp20: tests/CMakeFiles/test-json_pointer_cpp20.dir/build.make
tests/test-json_pointer_cpp20: tests/CMakeFiles/test-json_pointer_cpp20.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-json_pointer_cpp20"
	cd /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-json_pointer_cpp20.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test-json_pointer_cpp20.dir/build: tests/test-json_pointer_cpp20
.PHONY : tests/CMakeFiles/test-json_pointer_cpp20.dir/build

tests/CMakeFiles/test-json_pointer_cpp20.dir/clean:
	cd /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test-json_pointer_cpp20.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test-json_pointer_cpp20.dir/clean

tests/CMakeFiles/test-json_pointer_cpp20.dir/depend:
	cd /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests/CMakeFiles/test-json_pointer_cpp20.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/test-json_pointer_cpp20.dir/depend

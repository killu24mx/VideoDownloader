# CMake generated Testfile for 
# Source directory: /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/cmake_import_minver
# Build directory: /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests/cmake_import_minver
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cmake_import_minver_configure "/usr/bin/cmake" "-G" "Unix Makefiles" "-A" "" "-DCMAKE_CXX_COMPILER=/usr/bin/c++" "-Dnlohmann_json_DIR=/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build" "/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/cmake_import_minver/project")
set_tests_properties(cmake_import_minver_configure PROPERTIES  FIXTURES_SETUP "cmake_import_minver" LABELS "not_reproducible" _BACKTRACE_TRIPLES "/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/cmake_import_minver/CMakeLists.txt;1;add_test;/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/cmake_import_minver/CMakeLists.txt;0;")
add_test(cmake_import_minver_build "/usr/bin/cmake" "--build" ".")
set_tests_properties(cmake_import_minver_build PROPERTIES  FIXTURES_REQUIRED "cmake_import_minver" LABELS "not_reproducible" _BACKTRACE_TRIPLES "/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/cmake_import_minver/CMakeLists.txt;9;add_test;/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/cmake_import_minver/CMakeLists.txt;0;")

# CMake generated Testfile for 
# Source directory: /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/cmake_fetch_content2
# Build directory: /home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/build/tests/cmake_fetch_content2
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cmake_fetch_content2_configure "/usr/bin/cmake" "-G" "Unix Makefiles" "-DCMAKE_CXX_COMPILER=/usr/bin/c++" "-Dnlohmann_json_source=/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json" "/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/cmake_fetch_content2/project")
set_tests_properties(cmake_fetch_content2_configure PROPERTIES  FIXTURES_SETUP "cmake_fetch_content2" LABELS "git_required;not_reproducible" _BACKTRACE_TRIPLES "/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/cmake_fetch_content2/CMakeLists.txt;2;add_test;/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/cmake_fetch_content2/CMakeLists.txt;0;")
add_test(cmake_fetch_content2_build "/usr/bin/cmake" "--build" ".")
set_tests_properties(cmake_fetch_content2_build PROPERTIES  FIXTURES_REQUIRED "cmake_fetch_content2" LABELS "git_required;not_reproducible" _BACKTRACE_TRIPLES "/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/cmake_fetch_content2/CMakeLists.txt;9;add_test;/home/ilya/Projects/cppProjects/RutubeVideoDownloader/dep/libjson/json/tests/cmake_fetch_content2/CMakeLists.txt;0;")

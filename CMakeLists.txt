cmake_minimum_required(VERSION 3.2)

project(VideoDownloader)


find_package(cpr REQUIRED)

include_directories(./include)


add_executable(main
    src/main.cpp
    src/videoinfo.cpp
    src/resolution.cpp
    src/m3u8listinfo.cpp
    src/httprequestsender.cpp
    src/video_downloader.cpp
    src/segmentlist.cpp
)

target_link_libraries(main PRIVATE cpr::cpr)
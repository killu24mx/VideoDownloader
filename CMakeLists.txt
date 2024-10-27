cmake_minimum_required(VERSION 3.2)

project(VideoDownloader)

include(FetchContent)
FetchContent_Declare(cpr GIT_REPOSITORY https://github.com/libcpr/cpr.git
                         GIT_TAG bb01c8db702fb41e5497aee9c0559ddf4bf13749) # Replace with your desired git commit from: https://github.com/libcpr/cpr/releases

FetchContent_MakeAvailable(cpr)

include_directories(./include)

include_directories(./dep)

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

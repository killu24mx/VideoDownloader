#ifndef _VIDEO_DOWNLOADER_H_
#define _VIDEO_DOWNLOADER_H_

#include <string>
#include <fstream>
#include <memory>
#include <filesystem>


#include "videoinfo.h"
#include "m3u8listinfo.h"
#include "segmentlist.h"
#include "resolution.h"


class VideoDownLoader
{
public:
    VideoDownLoader() = delete;
    VideoDownLoader(const VideoDownLoader&) = delete;
    VideoDownLoader& operator=(const VideoDownLoader&) = delete;

    static bool LoadFromURL(const std::string& Url,const std::string file_path,const Resolution& resolution);
    static void Interface();
    static bool convert_ts_to_mp4(const std::string& ts_path);
    
private:
    static bool DownloadAllSegments(std::ofstream& pFile,const SegmentList& sl);


};


#endif
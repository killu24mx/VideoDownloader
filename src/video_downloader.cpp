#include "../include/video_downloader.h"
#include "video_downloader.h"

std::shared_ptr<std::ofstream> open_file(const std::string& path){
    std::shared_ptr<std::ofstream> pFile(new std::ofstream(),[](std::ofstream* pfile){
        pfile->close();
        delete pfile;
    });

    pFile->open(path);
    if(!pFile->is_open()){
        return nullptr;
    }
    return pFile;
}

bool VideoDownLoader::LoadFromURL(const std::string &Url,const std::string file_path,const Resolution& resolution)
{
    auto pFile = open_file(file_path);
    if(!pFile){
        return false;
    }
    VideoInfo videoinfo;

    if(!videoinfo.LoadFromURL(Url)){
        return false;
    }

    M3U8ListInfo m3u8list;
    if(!m3u8list.LoadFromURL(videoinfo.GetM3U8ListUrl()))
        return false;

    SegmentList sl;
    if(!sl.LoadFromURL(m3u8list.GetSLUrlFromResolution(resolution))){
        return false;
    }

    if(!DownloadAllSegments(pFile,sl)){
        return false;
    }
   
    return true;
}

void VideoDownLoader::Interface()
{
    

}

bool VideoDownLoader::DownloadAllSegments(std::shared_ptr<std::ofstream> pFile, const SegmentList &sl)
{
    auto& vec_of_segmnts = sl.GetListOfSegments();
    size_t progress = 0;
    for(const auto& s_url : vec_of_segmnts){
        HTTPRequestSender sender;

        unsigned int code = sender.Get(s_url);
        if(code >= 400)return false;

        std::string data = sender.StringData();
        if(!data.size()) return false;

        pFile->write(data.c_str(),data.size());
        progress++;
        std::cout << "progrress: " << static_cast<double>(progress)/static_cast<double>(vec_of_segmnts.size()) * 100 << std::endl;
    }
    return true;
}

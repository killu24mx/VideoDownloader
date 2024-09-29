#ifndef _VIDEOINFO_H_
#define _VIDEOINFO_H_

#include <string>
#include <nlohmann/json.hpp>

#include "httprequestsender.h"

using std::size_t;

class VideoInfo{
public:
    VideoInfo() = default;

    bool LoadFromURL(const std::string& url);
   
    const std::string GetTitle()const;
    const std::string GetM3U8ListUrl()const;
    const std::string GetId()const;
    const std::string GetUrl()const;


private:
    std::string title;
    std::string m3u8infolist_url;
    std::string url;
    std::string id;

    static std::string GetVideoIdFromUrl(const std::string& Url);

    void LoadFromJson(const nlohmann::json& json);
    const std::string GetJsonUrl()const;

};



#endif
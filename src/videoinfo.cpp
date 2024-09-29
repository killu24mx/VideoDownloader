#include "../include/videoinfo.h"
#include "videoinfo.h"


std::string VideoInfo::GetVideoIdFromUrl(const std::string &url)
{
    auto it1 = url.end() - 2;
    while(*it1 != '/'){--it1;}
    auto it2 = url.end() - 1;
    return std::string(it1+1,it2);
}

void VideoInfo::LoadFromJson(const nlohmann::json &json)
{
    title = json["title"];
    m3u8infolist_url = json["video_balancer"]["default"];
}

const std::string VideoInfo::GetJsonUrl() const
{
    return "https://rutube.ru/api/play/options/" + id;
}

bool VideoInfo::LoadFromURL(const std::string &Url)
{
    url = Url;
    id = GetVideoIdFromUrl(Url);

    HTTPRequestSender sender;
    unsigned int code = sender.Get(GetJsonUrl());
    if(code >= 400) return false;

    nlohmann::json json = sender.JsonData();
    if(!json.size()) return false;

    LoadFromJson(json);

    return true;
}

const std::string VideoInfo::GetTitle() const { return title; }

const std::string VideoInfo::GetM3U8ListUrl() const{return m3u8infolist_url;}

const std::string VideoInfo::GetId() const { return id;}

const std::string VideoInfo::GetUrl() const { return url;}


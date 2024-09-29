#ifndef _M3U8LISTINFO_H_
#define _M3U8LISTINFO_H_

#include <vector>
#include <string>
#include <stdint.h>
#include <algorithm>

#include "resolution.h"
#include "httprequestsender.h"

class M3U8ListInfo{
public:
    struct M3U8Info{
            Resolution resolution;
            std::string segment_list_url;
            M3U8Info(const Resolution& r,const std::string& url): resolution(r),segment_list_url(url){}
    };
   
    const std::vector<M3U8Info> getM3U8List()const;
    std::string GetSLUrlFromResolution(const Resolution& resolution);

    bool LoadFromURL(const std::string& url);
    
private:
    std::vector<M3U8Info> m3u8info_list;
    
    void LoadFromData(const std::string& data);

    static const Resolution GetResolutionFromM3U8Line(const std::string& m3u8line);

};

#endif
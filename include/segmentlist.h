#ifndef _SEGMENT_LIST_H_
#define _SEGMENT_LIST_H_

#include <vector>
#include <string>
#include <sstream>
#include <iostream>

#include "httprequestsender.h"

using std::size_t;

class SegmentList{
public:
    size_t GetSegmntsCount();
    bool LoadFromURL(const std::string& segment_list_url);

    const std::vector<std::string> GetListOfSegments()const;

    const std::string GetVideoAdress();
    
private:
    std::vector<std::string> list_of_segments;
    std::string segment_list_url;

    void LoadFromData(const std::string& str);  
    
};

#endif
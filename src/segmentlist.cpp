#include "segmentlist.h"

size_t SegmentList::GetSegmntsCount(){return list_of_segments.size();}

bool SegmentList::LoadFromURL(const std::string &segment_list_url)
{
    this->segment_list_url = segment_list_url;
    HTTPRequestSender sender;
    unsigned int code = sender.Get(segment_list_url);

    if(code >= 400)
        return false;

    std::string data = sender.StringData();
    if(!data.size()) return false;

    LoadFromData(data);
    
    return true;
}

const std::vector<std::string> SegmentList::GetListOfSegments() const
{
    return list_of_segments;
}

void SegmentList::LoadFromData(const std::string &data)
{
    std::stringstream sstream(data);
    std::string line;

    while(getline(sstream,line)){
        size_t pos = line.find("segment");
        if(pos != std::string::npos){
            std::string segment_url = GetVideoAdress() + "/" + std::string(line.begin() + pos,line.end());
            list_of_segments.push_back(segment_url);
        }
    }
}


const std::string SegmentList::GetVideoAdress()
{
    size_t pos = segment_list_url.find(".mp4") + 4;
    return std::string(segment_list_url.begin(), segment_list_url.begin() + pos);
}

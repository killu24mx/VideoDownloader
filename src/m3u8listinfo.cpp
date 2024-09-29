#include "m3u8listinfo.h"
#include <set>
using std::size_t;

const std::vector<std::string> SplitStringBySeparator(const std::string& str,const std::set<char>& separators){
    std::vector<std::string> list_of_strings;
    std::string temp_str;

    for(char digit : str){
        if(separators.find(digit) == separators.end()) temp_str += digit;
        else{
            if(temp_str != "") list_of_strings.push_back(temp_str);
            temp_str = "";
        }
    }
    if(separators.find(str[str.size() - 1]) == separators.end()) 
        list_of_strings.push_back(temp_str);

    return list_of_strings;
}

const std::vector<std::string> SplitStringBySeparator(const std::string& str,char sep){
    std::set<char> separators{sep};
    return SplitStringBySeparator(str,separators);
}


void M3U8ListInfo::LoadFromData(const std::string &data)
{
    std::set<char> separators = {' ','\n'};

    const auto lines = SplitStringBySeparator(data,separators);
       
    std::string last_resolution;

    for(size_t i = 0; i < lines.size() - 1;i++){
        const std::string& line = lines[i];
        auto res_pos = line.find("RESOLUTION");

        if(res_pos != std::string::npos && line != last_resolution){
        
            Resolution res = GetResolutionFromM3U8Line(line);
            last_resolution = line;
            std::string url = lines[i+ 1];
            m3u8info_list.emplace_back(res,url);
        }
    }
}

const Resolution M3U8ListInfo::GetResolutionFromM3U8Line(const std::string& m3u8line)
{
    size_t eq_pos = m3u8line.find('=');
    return Resolution::FromString(std::string(m3u8line.begin() + eq_pos + 1,m3u8line.end()));
}
const std::vector<M3U8ListInfo::M3U8Info> M3U8ListInfo::getM3U8List()const
{
    return m3u8info_list;
}

std::string M3U8ListInfo::GetSLUrlFromResolution(const Resolution &resolution)
{
    auto it = std::find_if(m3u8info_list.begin(),m3u8info_list.end(),[resolution](const M3U8Info& m3u8info)->bool{
        return m3u8info.resolution.GetPair().first == resolution.GetPair().first
                    && m3u8info.resolution.GetPair().second == resolution.GetPair().second;
            
    });
    return it->segment_list_url;
}

bool M3U8ListInfo::LoadFromURL(const std::string &url)
{
    HTTPRequestSender sender;

    unsigned int code = sender.Get(url);
    if(code >= 400) return false;

    const std::string data = sender.StringData();
    if(!data.size()) return false;

    LoadFromData(data);

    return true;
}

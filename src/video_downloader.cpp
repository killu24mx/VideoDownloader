#include "video_downloader.h"


bool VideoDownLoader::LoadFromURL(const std::string &Url,const std::string file_path,const Resolution& resolution)
{

    std::ofstream file;
    file.open(file_path);

    if(!file.is_open()){
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

    if(!DownloadAllSegments(file,sl)){
        return false;
    }
   
    return true;
}

void VideoDownLoader::Interface()
{
    std::cout << "input video url: " << "\n";

    std::string url;
    getline(std::cin,url);

    VideoInfo videoinfo;

    if(!videoinfo.LoadFromURL(url)){
        std::cout << "Error loading video information!\n";
        return;
    }

    M3U8ListInfo m3u8listinfo;
    if(!m3u8listinfo.LoadFromURL(videoinfo.GetM3U8ListUrl())){
        std::cout << "Error loading video information!\n";
        return;
    }

    std::cout << "\nInformation loaded:\n";
    std::cout << "Title:\t" << videoinfo.GetTitle() << "\n";
    std::cout << "Available resolutions:\n";

    auto m3u8list = m3u8listinfo.getM3U8List();

    for (size_t i = 0; i < m3u8list.size(); i++){
        std::cout << std::to_string(i + 1) << ".\t" << m3u8list[i].resolution.ToString() << "\n";
    }

    std::cout << "\nSelect number of resolution: ";


    int number = 0;
    std::cin >> number;
    std::cout << "\n";

    while(number <= 0 || number > m3u8list.size()){
        std::cout << "Incorrect number!\n";
        std::cout << "\nSelect number of resolution: ";
        std::cin >> number;
        std::cout << "\n";
    }

    Resolution resolution = m3u8list[number - 1].resolution;


    char digit;
    bool _convert_to_mp4 = false;

    std::cout << "Convert to mp4? (y/n)\n";
    std::cin >> digit;

    if(tolower(digit) == 'y')
        _convert_to_mp4 = true;

    std::cout << "\nResolution: " << resolution.ToString() << " Downloading startded!\n\n";



    std::string path = "video.ts";

    std::ofstream file;

    file.open(path,std::ios::binary);

    if(!file.is_open()){
        std::cout << "Error loading video!\n";
        return;
    }
    

    


    SegmentList sl;
    if(!sl.LoadFromURL(m3u8listinfo.GetSLUrlFromResolution(resolution))){
        std::cout << "Error loading segment list!\n";
        return;
    }


    if(!DownloadAllSegments(file,sl)){
        std::cout << "Error loading segment list!\n";
        return;
    }

    if(_convert_to_mp4){
        std::cout << "Convertion to mp4....\n";

        if(!convert_ts_to_mp4(path)){
            std::cout << "error convertion\n";
            return;
        }
        std::filesystem::remove(path);
        std::cout << "complete!\n";

        std::filesystem::rename("video.mp4", videoinfo.GetTitle() + ".mp4");
    }


    else{
        std::filesystem::rename("video.ts", videoinfo.GetTitle() + ".mp4");
    }
    
    std::cout << "Finished!\n";

}

bool VideoDownLoader::convert_ts_to_mp4(const std::string& ts_path)
{
    std::stringstream comand_stream;
    std::string mp4_path = ts_path;
    mp4_path.replace(ts_path.find(".ts"),4,".mp4");

    comand_stream << "ffmpeg -i " << ts_path << " " << mp4_path << " >nul 2>&1";
    

    std::string command = comand_stream.str();
    std::cout << "command: " << command << "\n";
    return !system(command.c_str());
}

bool VideoDownLoader::DownloadAllSegments(std::ofstream& file, const SegmentList &sl)
{
    auto& vec_of_segmnts = sl.GetListOfSegments();
    size_t progress = 0;
    for(const auto& s_url : vec_of_segmnts){
        HTTPRequestSender sender;

        unsigned int code = sender.Get(s_url);
        if(code >= 400)return false;

        std::string data = sender.StringData();
        if(!data.size()) return false;

        file.write(data.c_str(),data.size());
        progress++;
        std::cout << "progrress: " << static_cast<double>(progress)/static_cast<double>(vec_of_segmnts.size()) * 100 << "\n";
    }
    return true;
}

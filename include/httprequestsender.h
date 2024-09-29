#ifndef _HTTPREQUESTSENDER_H_
#define _HTTPREQUESTSENDER_H_

#include <cpr/cpr.h>
#include <nlohmann/json.hpp>

class HTTPRequestSender{
public:
    unsigned int Get(const std::string& Url);
    std::string StringData();
    nlohmann::json JsonData();
private:
    std::string data;
    
};

#endif
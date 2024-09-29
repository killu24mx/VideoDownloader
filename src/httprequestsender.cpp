#include "../include/httprequestsender.h"

unsigned int HTTPRequestSender::Get(const std::string &url)
{
    auto responce = cpr::Get(cpr::Url(url));
    data = responce.text;
    return responce.status_code;
}

std::string HTTPRequestSender::StringData()
{
    return data;
}

nlohmann::json HTTPRequestSender::JsonData()
{
    nlohmann::json json = nlohmann::json::parse(data);
    return json;
}

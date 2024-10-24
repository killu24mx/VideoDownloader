#include "resolution.h"

const std::pair<uint16_t,uint16_t> Resolution::GetPair()const {return res;}

const Resolution Resolution::FromString(const std::string &rstr)
{
    std::size_t x_pos = rstr.find('x');
    if(x_pos == std::string::npos)
        throw std::runtime_error("bad resolution");

    std::string wstr = std::string(rstr.begin(),rstr.begin() +  x_pos);
    std::string hstr = std::string(rstr.begin() +  x_pos + 1,rstr.end());

    uint16_t w = std::stoi(wstr);
    uint16_t h = std::stoi(hstr);

    return Resolution(w,h);
}

Resolution::Resolution(const std::pair<uint16_t, uint16_t> res) : res(res) {}\


Resolution::Resolution(uint16_t w, uint16_t h) : Resolution(std::pair<uint16_t, uint16_t>(w, h)) {}


std::string Resolution::ToString() const
{
    return std::to_string(res.first) + "x" + std::to_string(res.second);
}
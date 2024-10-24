#ifndef _RESOLUTION_H_
#define _RESOLUTION_H_
#include <stdint.h>
#include <iostream>
#include <algorithm>
#include <set>

class Resolution{
public:
    const std::pair<uint16_t,uint16_t> GetPair()const;
    static const Resolution FromString(const std::string& rstr);
    Resolution(std::pair<uint16_t,uint16_t>);
    std::string ToString()const;
    Resolution(uint16_t w,uint16_t h);
private:
    const std::pair<uint16_t,uint16_t> res;

};


#endif
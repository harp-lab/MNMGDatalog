#ifndef TIMESTAMP_UTIL_H
#define TIMESTAMP_UTIL_H
#pragma once
#include <chrono>
#include <iostream>

inline long long current_time_ns() {
    return std::chrono::duration_cast<std::chrono::nanoseconds>(
        std::chrono::high_resolution_clock::now().time_since_epoch()
    ).count();
}

#define LOG_TIMESTAMP(label)                                                 \
do {                                                                         \
   std::cout << current_time_ns() << "," << label << "," << rank << "\n";    \
} while (0)
#endif //TIMESTAMP_UTIL_H

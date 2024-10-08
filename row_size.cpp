#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <sys/stat.h>
using namespace std;

int main(int argc, char **argv) {
    const char *input_file;
    input_file = argv[1];
    struct stat filestats{};
    stat(input_file, &filestats);
    off_t filesize = filestats.st_size;
    int total_columns = 2;
    int total_rows = filesize / (sizeof(int) * total_columns); 
    cout << input_file << ": " << total_rows << endl;
    return 0;
}

// g++ row_size.cpp -o row
// ./row data_7035.bin

#include <iostream>
#include <ctime>
#include <fstream>

int main(int argc, char** argv) {
    std::srand(std::time(nullptr));
    std::ofstream fout;
    fout.open("io/random.txt");
    int start, end;
    start = 1 + rand() % 10000;

    end = rand()%(400 + 400 + 1) - 400;
    end += start;
    if(end > 10000){
      end = 10000;
    }
    if(end < 1){
      end = 1;
    }
    fout << start << " " << end;
    for(int i = 0; i < 99; ++i){  
        fout << "\n";
        start = 1 + rand() % 10000;
        end = rand()%(400 + 400 + 1) - 400;
        end += start;
        if(end > 10000){
            end = 10000;
        }
        if(end < 1){
            end = 1;
        }

        fout << start << " " << end;
    }
    fout.close();
    return 0;
}
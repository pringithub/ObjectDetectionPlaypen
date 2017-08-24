g++ findCBCorners.cpp -o findCBCorners `pkg-config --cflags --libs opencv` 
./a.out $1

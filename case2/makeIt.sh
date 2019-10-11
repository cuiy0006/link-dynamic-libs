#generate foo.o bar.o
g++ -c -fPIC ./foodir/foo.cpp ./bardir/bar.cpp
#generate libfoo.so
g++ -fPIC -shared -o ./lib/libfoo.so foo.o
#generate libbar.so
g++ -fPIC -shared -o ./lib/libbar.so bar.o
#generate foobar.o
g++ -c -fPIC -I./foodir -I./bardir ./foobardir/foobar.cpp
#generate libfoobar.so
g++ -fPIC -shared -o ./lib/libfoobar.so foobar.o
#generate main.o
g++ -c -I./foobardir main.cpp
#generate main.out
g++ -L./lib -Wl,-rpath=./lib -o main.out main.o -lfoobar -lfoo -lbar


gcc -fPIC -shared -o lib/libmax.so max.c


#将其编译为共享库，-fPIC 是编译选项，PIC 是 Position Independent Code 的缩写，表示要生成位置无关的代码，这是动态库需要的特性；
#-shared 是链接选项，告诉gcc生成动态库而不是可执行文件。
#为了让用户知道我们的动态库中有哪些接口可用，我们需要编写对应的头文件，比如可以写一个 max.h

gcc test.c -L./lib -lmax -Wl,-rpath=./lib


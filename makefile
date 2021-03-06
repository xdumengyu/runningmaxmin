#
.SUFFIXES:
#
.SUFFIXES: .cpp .o .c .h

RELEASEFLAGS =  -O3 -Wall -mavx -msse4.2 -Wextra  -fexceptions -fPIC
DEBUGFLAGS =  -g3 -Wall -mavx -msse4.2   -Wextra -fexceptions -fPIC

all: runningmaxmin 

debug: runningmaxmin.h runningmaxmin.cpp
	$(CXX) $(DEBUGFLAGS) -o runningmaxmin runningmaxmin.cpp

runningmaxmin : runningmaxmin.h runningmaxmin.cpp
	$(CXX) $(RELEASEFLAGS) -o runningmaxmin runningmaxmin.cpp


clean:
	rm -f *.o runningmaxmin

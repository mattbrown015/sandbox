TARGET=sandbox

CXX=g++ -std=c++14
LD=g++

CXXFLAGS=-g -Wall
INCLUDE_DIRS=-I/usr/local/boost_1_63_0/boost_1_63_0/

LDFLAGS=
LIBS=-lgtest -lgtest_main

.PHONY: default all clean

default: $(TARGET)
all: default

OBJECTS=sandbox.o sandbox-test.o

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDE_DIRS) -c $< -o $@

$(TARGET): $(OBJECTS)
	$(LD) $(LDFLAGS) $(OBJECTS) $(LIBS) -o $@

clean:
	rm *.o $(TARGET)


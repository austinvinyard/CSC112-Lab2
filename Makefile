CC=g++
CXXFLAGS=--std=c++11 -g
WIDGET_LIB=widget.o term.o application.o keystream.o
SHAPE_LIB=point.o line.o rectangle.o
TARGETS=shapes

all: $(TARGETS)
shapes: shapes.o canvas.o $(WIDGET_LIB) $(SHAPE_LIB)
point.o: point.h point.cpp
line.o: line.cpp line.h
rectangle.o: rectangle.cpp rectangle.h
widget.o: widget.h widget.cpp
term.o: term.h termmanip.h term.cpp
application.o: application.h application.cpp
keystream.o: keystream.h keystream.cpp
clean: 
	rm -f *.o $(TARGETS)


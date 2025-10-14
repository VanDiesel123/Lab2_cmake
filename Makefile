CC = gcc
CFLAGS = -Wall -Werror
LIB = libmath.a
TARGET = main
OBJS = project.o main.o

all: $(LIB) $(TARGET)

$(LIB): project.o
	ar rcs $(LIB) project.o

$(TARGET): main.o $(LIB)
	$(CC) $(CFLAGS) -o $(TARGET) main.o -L, -lmath

main.o: main.c project.h
	$(CC) $(CFLAGS) -c main.c

project.o: project.c project.h
	$(CC) $(CFLAGS) -c project.c

clean:
	rm -f *.o $(TARGET) $(LIB)


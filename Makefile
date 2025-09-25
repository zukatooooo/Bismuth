#Compiler options
CC = gcc
CFLAGS = -Wall -g -Iinclude
CLIBS = -Llib -lpthread -lSDL3

#Target Executable
TARGET = Bismuth

#Source
SRC = $(wildcard src/*.c)

#Object
OBJ = $(SRC:.c=.o)


#Default rule
all: $(TARGET)

#Link step
$(TARGET): $(OBJ) 
	$(CC) $(OBJ) -o $(TARGET) $(CFLAGS) $(CLIBS)

#Compile step
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

#Clean rule
clean:
	rm -f $(OBJ) $(TARGET)
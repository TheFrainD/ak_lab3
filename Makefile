CC = g++
CFLAGS = -O0 -g -Wall

SRC = main.cpp print.cpp
OBJ = $(SRC:.cpp=.o)

SRC_LIB = print.cpp
OBJ_LIB = $(SRC_LIB:.cpp=.o)

BIN = lab3
LIB = libml.a

.PHONY: all clean

all: $(BIN) $(LIB)

$(BIN): $(OBJ)
	$(CC) $^ -o $@

$(LIB): $(OBJ_LIB)
	ar rcs $@ $^

%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	$(RM) $(OBJ) $(BIN) $(LIB) $(OBJ_LIB)

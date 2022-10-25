CC = g++
CFLAGS = -O0 -g -Wall

SRC = main.cpp print.cpp
OBJ = $(SRC:.cpp=.o)

BIN = lab3

.PHONY: all clean

all: $(BIN)

$(BIN): $(OBJ)
	$(CC) $^ -o $@

%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	$(RM) $(OBJ) $(BIN)
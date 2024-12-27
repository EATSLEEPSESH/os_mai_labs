# Define variables
CC = gcc
CFLAGS = -Wall -Wextra -Werror
LDFLAGS = -lczmq
INCLUDE_PATH = /usr/local/include
LIB_PATH = /usr/local/lib

# Source files
SRC = main.c

# Output binary
OUTPUT = my_program

# Default target
all: $(OUTPUT)

# Rule for compiling the program
$(OUTPUT): $(SRC)
	$(CC) $(CFLAGS) -I$(INCLUDE_PATH) -L$(LIB_PATH) -o $(OUTPUT) $(SRC) $(LDFLAGS)

# Rule for cleaning up
clean:
	rm -f $(OUTPUT)

.PHONY: all clean

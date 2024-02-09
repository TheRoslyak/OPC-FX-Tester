# Compiler
CC = g++

# Compilation flags
CFLAGS = -std=c++17 -Wall -fPIC -DULAPI  
# Paths to search for header files
INCLUDES = 	-I/usr/include/linuxcnc \
           	-I/home/armada/Downloads/linuxcnc-dev/src/hal \
			-I/home/armada/open62541-1.3.9/src/pubsub \
			-I/home/armada/open62541-1.3.9/deps \
			-I/usr/local/include/open62541/
			
			
			
		   	

# Libraries for linking
LIBS =  -lopen62541

# Source files
SRCS = main.cpp

# Output file
OUTPUT = /usr/bin/opcfxserver

# Rule to compile all source files
all:
	$(CC) $(CFLAGS) $(INCLUDES) $(SRCS) $(LDFLAGS) $(LIBS) -o $(OUTPUT)

# Rule for cleaning
clean:
	rm -f $(OUTPUT)
CC=gcc
V=CCFLAGS=-Wall
CLEAN=rm -f
PROGRAM_NAME=main
OBJECT_FILES=*.o
SOURCE_FILES=main.h main.c misc.c

$(PROGRAM_NAME): $(OBJECT_FILES)
	$(CC) $(CCFLAGS) -o $@ $^
$(OBJECT_FILES): $(SOURCE_FILES)
	$(CC) $(CCFLAGS) -c $^
clean:
	$(CLEAN) *.o $(PROGRAM_NAME)


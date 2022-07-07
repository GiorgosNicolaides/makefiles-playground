#The program must have 3 folders 
# 
# 
# 			1->bin :: Will store the executable
# 			2->src :: Will have the source code 
# 			3->include ::Will have the header files 
# 

#assign variable to make your life easier :)
SRC := src #or any name
BIN := bin #or any name
INCLUDE := include #or any name

CC : #name of the compiler 

CFLAGS := -Wall -Werror -I$(INCLUDE)

#assign 
OBJECTS := $(SRC)/#source code files names
EXECYTABLE := #desired name of the executable
ARGUEMENTS := 

all: $(EXECUTABLE)

# $^ is $(OBJECTS)
$(EXECUTABLE): $(OBJECTS)
	$(CC) $^ --output $(BIN)/$(EXECUTABLE)

#make command run
run: $(EXECUTABLE)
	./$(BIN)/$(EXECUTABLE) $(ARGUMENTS)

#make command clean
clean:
	$(RM) $(OBJECTS) $(BIN)/$(EXECUTABLE) 

.PHONY: all, run, clean
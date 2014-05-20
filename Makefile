CC = gcc
CXX = g++
PROB1 = hw6_2_1
PROB2 = hw6_2_2
TARGET = $(PROB1) $(PROB2)
OBJ1 = avl.o rb.o bst.o hw6_2_1.o
OBJ2 = avl_ntudsa.o hw6_2_2.o
OBJS = $(OBJ1) $(OBJ2)

RM = rm -rf

.PHONY: all pre cleanall clean run1 run2

all: $(TARGET)

%.o:%.c
	$(CC) $< -c

%.o:%.cpp
	$(CXX) $< -c

$(PROB1): $(OBJ1)
	$(CXX) $(OBJ1) -o $@

$(PROB2): $(OBJ2)
	$(CXX) $(OBJ2) -o $@

pre: $(OBJS)

cleanall:
	$(RM) $(TARGET)
	$(RM) $(OBJS)
	
clean:
	$(RM) $(TARGET)

run1: $(PROB1)
	./$(PROB1)

run2: $(PROB2)
	./$(PROB2)
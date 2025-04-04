CC = gcc #compiler gcc
CFLAGS = -I MultiBinary/include #including the directory for header file
DEBUGFLAGS = -g -DDEBUG#enable debugging symbol
OPTFLAGS = -O2#optimize the code for better performance

#DEBBUG CONDITION
#DEBUGFLAGS enable debugging features like -g(debug symbols), -Wall(warnings)...
# Use DEBUG=1 to enable debugging
ifeq ($(DEBUG),1)
    CFLAGS += $(DEBUGFLAGS)
else #Otherwise optimizing the code
    CFLAGS += $(OPTFLAGS)
endif

#SOURCE FILE PATHS FOR DIFFERENT MODULES
# Corrected file paths
#source files for the Math module(operations)
MATH_SRCS = MultiBinary/src/mathop/mathop.c MultiBinary/src/mathop/main_math.c
#source files for the string operations
STRING_SRCS = MultiBinary/src/stringop/stringop.c MultiBinary/src/stringop/main_string.c
#source files for the data operations
DATA_SRCS = MultiBinary/src/dataop/dataop.c MultiBinary/src/dataop/main_data.c
#all the core sources required for the main program
ALL_SRCS = MultiBinary/src/main.c MultiBinary/src/mathop/mathop.c MultiBinary/src/stringop/stringop.c MultiBinary/src/dataop/dataop.c

#executable names for each of it
MATH_OPS = math_ops
STRING_OPS = string_ops
DATA_OPS = data_ops
ALL_OPS = all_ops

#DEFAULT TARGET: to build all the executables when 'make' is run
all: $(MATH_OPS) $(STRING_OPS) $(DATA_OPS) $(ALL_OPS)

#compile math operations program
# -o $@ -> defines the output file name where in this case it is MATH_OPS
# $^ -> represents all the files that need to be compiled.
#this rule compiles all the source files listed in MATH_SRCS and generates the math_ops executable.
$(MATH_OPS): $(MATH_SRCS)
	$(CC) $(CFLAGS) -o $@ $^
#compile string operations program
$(STRING_OPS): $(STRING_SRCS)
	$(CC) $(CFLAGS) -o $@ $^
#compile data operation program
$(DATA_OPS): $(DATA_SRCS)
	$(CC) $(CFLAGS) -o $@ $^
#To compile all of them together
$(ALL_OPS): $(ALL_SRCS)
	$(CC) $(CFLAGS) -o $@ $^

#TARGET:remove all the compiled executables which are _ops
clean:
	rm -f $(MATH_OPS) $(STRING_OPS) $(DATA_OPS) $(ALL_OPS)

#run the math operations executable
run_math:
	./math_ops

#run the string operations executable
run_string:
	./string_ops

#run the data operations executable
run_data:
	./data_ops

#run all the operations executable
run_all:
	./all_ops
# Makefile for MultiBinary Project:
This repository contains a Makefile for compiling a modular C project. The project incudes organized header files, source files, and main functions accross different modules.
It demonstrated operations using mathematical functions, string manipulation and data handling - each structured in seperate modules.

### MultiBinary contains:
The Multibinary is a collection of individual C programs organized into modules:
* Math operations
* String operations
* Data operations
Each module has its own set of source files(.c) and header files(.h), and this Makefile helps you compile each one seperately or all at once with simple command which is "make".

### MultiBinary structure:

MultiBinary  
|--- include  
|    |--- dataop.h  
|    |--- mathop.h  
|    |--- stringop.h  
|  
|--- src  
|    |--- main.c  
|    |--- dataop  
|    |    |--- dataop.c  
|    |    |--- main_data.c  
|    |  
|    |--- mathop  
|    |    |--- mathop.c  
|    |    |--- main_math.c  
|    |  
|    |--- stringop  
|         |--- stringop.c  
|         |--- main_string.c  
|  
 Makefile  



### Features of the Makefile:
##### .Debug support:
Enables debugging for the C files during compilation using a DEBUG flag.
##### .Clean target:
Easily removes all compiled files using the make clean command written in Makefile.
##### .Structure:
Each module has its own set of functions and can be compiled and run individually or together.

### Usage:
To compile all modules and generate executables, simply run the command 'make' in the terminal .This will compile the math, string, data operation modules and the combined program.


Done by- Y Shamili

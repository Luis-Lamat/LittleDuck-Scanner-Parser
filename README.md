# LittleDuck Scanner & Parser
These are simple scanner and parser generating tools for a small programming language called "LittleDuck" made for my 
compilers class. I used two different tools to create the scanner and parser for this language: 
[Flex](http://flex.sourceforge.net/manual/)/[Bison](https://www.gnu.org/software/bison/) and [ANTLR](http://www.antlr.org/), so
I'll show you how to compile and run each version separately (**Note**: this is in a Unix machine).

## Running Flex & Bison
First, you must have Flex and Bison installed. If you have [Homebrew](http://brew.sh/) installed these commands will do the trick:
```
$ brew install flex
$ brew install bison
```
After having installed these tools, simply open the `FLEX & BISON` directory in your terminal, hit the make command and press enter.
```
$ make
```
The input file (`input.txt`) is already linked in the Bison C code, so you don't have to worry about that. Feel free to change
the `input.txt` file and running again to see the changes and warnings in the parser.

## Running on ANTLR
For this part, you must have ANTLR4 installed. Their [getting started page](https://github.com/antlr/antlr4/blob/master/doc/getting-started.md)
has a very descriptive installation tutorial on Unix and Windows. After carefully installing ANTLR, do the same as the Flex & Bison part
and open the ANTLR folder on your terminal and hit the make command. This will run Java ANTLR on the CLI and will accept the input in there.
Type the program or text and then hit `Ctrl+D` to finish its execution and see the output.

#include <stdio.h>
#include <stdlib.h>

extern int yylex();
extern int yylineno;
extern char* yytext;
extern int word_count;

#define END -1

int main(int argc, char const *argv[])
{
    int wc = 1;
    int token = yylex();
    while(token != END){
        printf("token no. = %d\n", token);
        printf("WORD %d is: %s\n", wc++, yytext);
        token = yylex();

    }

    printf("Total # of words = %d\n", word_count);
    return 0;
}
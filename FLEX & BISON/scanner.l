%{

#include <iostream>
#include <stdio.h>
using namespace std;

%}

LETTER      [a-zA-Z]
DIGIT       [0-9]
IDENTIFIER  {LETTER}(_?{LETTER}|{DIGIT})*
INT         {DIGIT}+
FLOAT       {DIGIT}+\.{DIGIT}+
STRING      \"(\\.|[^\\"])*\"
SPACES      [ \t\r\n]

%%

{SPACES}    ;
{IDENTIFIER}{ printf("Found an IDENTIFIER\n"); }
{INT}       { printf("Found an INT\n"); }
{FLOAT}     { printf("Found a FLOAT\n"); }
{STRING}    { printf("Found a STRING\n"); }
.           { printf("Unrecognized...\n"); }

%%

int main(int, char**){
    yylex();    
    return 0;
}

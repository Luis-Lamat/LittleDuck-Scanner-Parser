%option noyywrap
%{

    #include <stdio.h>
    #include <stdlib.h>

    #define _ID 1
    #define _INT 2
    #define _FLOAT 3
    #define _STRING 4
    #define _END -1

    int word_count = 0;
%}

LETTER      [a-zA-Z]
DIGIT       [0-9]

%%
    IDENTIFIER  {LETTER}(_?{LETTER}|{DIGIT})*
INT         {DIGIT}+
FLOAT       {DIGIT}+\.{DIGIT}+
STRING      \"(\\.|[^\\"])*\"
SPACES      [ \t\r\n]
    "end"           { return _END; }
    {IDENTIFIER}    { word_count++; return _ID; }
    {INT}           { return _INT; }
    {FLOAT}         { return _FLOAT; }
    {STRING}        { return _STRING; }
    {SPACES}        { ; }

%%
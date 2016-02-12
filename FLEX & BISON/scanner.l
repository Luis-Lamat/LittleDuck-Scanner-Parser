%{

#include <iostream>
#include <stdio.h>
#include "parser.tab.h" // token definition
using namespace std;
#define YY_DECL extern "C" int yylex()

int line_num = 1;

%}
%%

"+"                             { return OP_PLUS; }
"-"                             { return OP_MINUS; }
"*"                             { return OP_TIMES; }
"/"                             { return OP_DIVISION; }
"<"                             { return OP_LESS_THAN; }
">"                             { return OP_GREATER_THAN; }
"<>"                            { return OP_NOT_EQUAL; }
"="                             { return OP_EQUALS; }
"("                             { return SEP_LPAR; }
")"                             { return SEP_RPAR; }
"{"                             { return SEP_LCBRACKET; }
"}"                             { return SEP_RCBRACKET; }
","                             { return SEP_COMMA; }
":"                             { return SEP_COLON; }
";"                             { return SEP_SEMICOLON; }
"int"                           { return INT; }
"float"                         { return FLOAT; }
"if"                            { return IF; }
"else"                          { return ELSE; }
"var"                           { return VAR; }
"print"                         { return PRINT; }
"program"                       { return PROGRAM; }
[ \t\r]                         { ; }
[\n]                            { line_num++; }
[a-zA-Z](_?([a-zA-Z]|[0-9]))*   { yylval.sval = strdup(yytext); return VAR_IDENTIFIER; }
[0-9]+                          { yylval.ival = atoi(yytext); return VAR_INT; }
[0-9]+\.[0-9]+                  { yylval.fval = atof(yytext); return VAR_FLOAT; }
\"(\\.|[^\\"])*\"               { yylval.sval = strdup(yytext); return VAR_STRING; }
.                               { printf("Invalid token (line %d): '%s'\n", line_num, yytext); exit(-1); }

%%

int yywrap(){ return 1; }


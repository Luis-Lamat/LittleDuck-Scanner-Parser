%{

#include <iostream>
#include <stdio.h>
using namespace std;
#define YY_DECL extern "C" int yylex()

%}
%%

[ \t\r\n]                       ;
[a-zA-Z](_?([a-zA-Z]|[0-9]))*   { printf("Found an IDENTIFIER\n"); }
[0-9]+                          { printf("Found an INT\n"); }
[0-9]+\.[0-9]+                  { printf("Found a FLOAT\n"); }
\"(\\.|[^\\"])*\"               { printf("Found a STRING\n"); }
.                               { printf("Unrecognized...\n"); }

%%

int yywrap(){
    return 1;
}

int main(int, char**){
    FILE *myfile = fopen("input.txt", "r");
    if (!myfile) {
        cout << "I can't open the file!" << endl;
        return -1;
    }
    yyin = myfile;
    yylex(); 
    return 0;
}

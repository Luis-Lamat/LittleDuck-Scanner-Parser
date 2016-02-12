grammar LittleDuck;
 
@members {
    public static void main(String[] args) throws Exception {
        LittleDuckLexer lex = new LittleDuckLexer(new ANTLRFileStream(args[0]));
        CommonTokenStream tokens = new CommonTokenStream(lex);
 
        LittleDuckParser parser = new LittleDuckParser(tokens);
 
        try {
            parser.programa();
        } catch (RecognitionException e)  {
            e.printStackTrace();
        }
    }
}

/*------------------------------------------------------------------
 * PARSER RULES
 *------------------------------------------------------------------*/

programa : 
    PROGRAM VAR_IDENTIFIER SEP_SEMICOLON pr_a bloque;
pr_a : 
    vars
    | ;

vars : 
    VAR v_a;
v_a : 
    v_b SEP_COLON tipo SEP_SEMICOLON v_c;
v_b :
    VAR_IDENTIFIER v_d;
v_d :
    SEP_COMMA v_b
    | ;
v_c :
    v_a
    | ;

tipo : 
    INT 
    | FLOAT;

bloque :
    SEP_LCBRACKET b_a SEP_RCBRACKET;
b_a :
    estatuto b_a
    | ;

estatuto :
    asignacion
    | condicion
    | escritura;

asignacion :
    VAR_IDENTIFIER OP_EQUALS expresion SEP_SEMICOLON;

expresion :
    exp ex_a;
ex_a :
    OP_GREATER_THAN exp
    | OP_LESS_THAN exp
    | OP_NOT_EQUAL exp
    | ;

escritura :
    PRINT SEP_LPAR es_a SEP_RPAR SEP_SEMICOLON;
es_a :
    expresion es_b
    | VAR_STRING es_b;
es_b :
    SEP_COMMA es_a
    | ;

condicion :
    IF SEP_LPAR expresion SEP_RPAR bloque cond_a SEP_SEMICOLON;
cond_a :
    ELSE bloque
    | ;

exp :
    termino e_a;
e_a :
    OP_PLUS exp
    | OP_MINUS exp
    | ;

termino :
    factor t_a;
t_a :
    OP_TIMES termino
    | OP_DIVISION termino
    | ;

factor :
    f_a;
f_a :
    SEP_LPAR expresion SEP_RPAR
    | f_b var_cte;
f_b :
    OP_PLUS
    | OP_MINUS
    | ;

var_cte :
    VAR_IDENTIFIER
    | VAR_INT
    | VAR_FLOAT;


/*------------------------------------------------------------------
 * LEXER RULES
 *------------------------------------------------------------------*/


OP_PLUS          : '+';
OP_MINUS         : '-';
OP_TIMES         : '*';
OP_DIVISION      : '/';
OP_LESS_THAN     : '<';
OP_GREATER_THAN  : '>';
OP_NOT_EQUAL     : '<>';
OP_EQUALS        : '=';
SEP_LPAR         : '(';
SEP_RPAR         : ')';
SEP_LCBRACKET    : '{';
SEP_RCBRACKET    : '}';
SEP_COMMA        : ',';
SEP_COLON        : ':';
SEP_SEMICOLON    : ';';
INT              : 'int';
FLOAT            : 'float';
IF               : 'if';
ELSE             : 'else';
VAR              : 'var';
PRINT            : 'print';
PROGRAM          : 'program';
VAR_INT          : (DIGIT)+ ;
VAR_FLOAT        : (DIGIT)+ ;
VAR_IDENTIFIER   : [a-zA-Z]('_'?([a-zA-Z]|(DIGIT)))* ;
VAR_STRING       : '"' ~('\r' | '\n' | '"')* '"' ;
fragment DIGIT   : '0'..'9' ;
WHITESPACE       : [ \t\r\n]+ -> skip ;


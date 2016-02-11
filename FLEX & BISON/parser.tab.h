/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     VAR_INT = 258,
     VAR_FLOAT = 259,
     VAR_STRING = 260,
     VAR_IDENTIFIER = 261,
     OP_PLUS = 262,
     OP_MINUS = 263,
     OP_TIMES = 264,
     OP_DIVISION = 265,
     OP_LESS_THAN = 266,
     OP_GREATER_THAN = 267,
     OP_NOT_EQUAL = 268,
     OP_EQUALS = 269,
     SEP_LPAR = 270,
     SEP_RPAR = 271,
     SEP_LCBRACKET = 272,
     SEP_RCBRACKET = 273,
     SEP_COMMA = 274,
     SEP_COLON = 275,
     SEP_SEMICOLON = 276,
     INT = 277,
     FLOAT = 278,
     IF = 279,
     ELSE = 280,
     VAR = 281,
     PRINT = 282,
     PROGRAM = 283
   };
#endif
/* Tokens.  */
#define VAR_INT 258
#define VAR_FLOAT 259
#define VAR_STRING 260
#define VAR_IDENTIFIER 261
#define OP_PLUS 262
#define OP_MINUS 263
#define OP_TIMES 264
#define OP_DIVISION 265
#define OP_LESS_THAN 266
#define OP_GREATER_THAN 267
#define OP_NOT_EQUAL 268
#define OP_EQUALS 269
#define SEP_LPAR 270
#define SEP_RPAR 271
#define SEP_LCBRACKET 272
#define SEP_RCBRACKET 273
#define SEP_COMMA 274
#define SEP_COLON 275
#define SEP_SEMICOLON 276
#define INT 277
#define FLOAT 278
#define IF 279
#define ELSE 280
#define VAR 281
#define PRINT 282
#define PROGRAM 283




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 15 "parser.y"
{
    int ival;
    float fval;
    char *sval;
}
/* Line 1529 of yacc.c.  */
#line 111 "parser.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;


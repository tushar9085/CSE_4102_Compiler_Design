%option noyywrap

%{
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	#include "parser.tab.h"
	
	int lineno = 1; // initialize to 1
	void yyerror();
%}

alpha     [a-zA-Z]
digit     [0-9]
alnum     {alpha}|{digit}
print     [ -~]

ID        {alpha}{alnum}*
ICONST    [0-9]{digit}*
FCONST    {digit}*"."{digit}+
CCONST    (\'{print}\')
%%

"//".*        { } 

"int"       { printf("%s -> INT\n", yytext); return INT; }
"double"    { return DOUBLE; }
"char"		{ return CHAR; }
"for"       { printf("%s -> FOR\n", yytext); return FOR; }

"if"		{return IF;}
"else"		{return ELSE;}

"+"       { return ADDOP; }
"-"       { return SUBOP; }
"*"       { return MULOP; }
"/"       { return DIVOP; }
"=="      { return EQUOP; }
">"       { return GT; }
"<"       { return LT; }

"("       { return LPAREN; }
")"       { return RPAREN; }
"{"       { return LBRACE; }
"}"       { return RBRACE; }
";"       { printf("%s -> SEMI\n", yytext); return SEMI; }
"="       { printf("%s -> ASSIGN\n", yytext); return ASSIGN; }

"dim"       	{ printf("%s -> DIM\n", yytext); return DIM; }
"as"       		{ printf("%s -> AS\n", yytext); return AS; }
"integer"       { printf("%s -> INTEGER\n", yytext); return INTEGER; }
"to"       { printf("%s -> TO\n", yytext); return TO; }
"next"       { printf("%s -> NEXT\n", yytext); return NEXT; }

{ID}        {printf("%s -> ID\n", yytext); return ID;}
{ICONST}    {printf("%s -> ICONST\n", yytext); return ICONST;}
{FCONST}    {return FCONST;}
{CCONST}    {return CCONST;}

"\n"        { lineno += 1; }
[ \t\r\f]+  

.       { yyerror("Unrecognized character"); }

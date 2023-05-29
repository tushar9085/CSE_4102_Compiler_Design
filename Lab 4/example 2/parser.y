%{
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	void yyerror();
	extern int lineno;
	extern int yylex();
%}

%token INT IF ELSE WHILE CONTINUE BREAK PRINT DOUBLE CHAR
%token ADDOP SUBOP MULOP DIVOP EQUOP LT GT
%token LPAREN RPAREN LBRACE RBRACE SEMI ASSIGN
%token ID
%token ICONST
%token FCONST
%token CCONST
%token DIM AS INTEGER

%left LT GT /*LT GT has lowest precedence*/
%left ADDOP 
%left MULOP /*MULOP has lowest precedence*/


%start code

%%
code: code statement {printf("code: code statement\n")}|statement {printf("statement\n")}
statement: DIM ID AS INTEGER {printf("statement: DIM ID AS INTEGER\n")}
%%

void yyerror ()
{
	printf("Syntax error at line %d\n", lineno);
	exit(1);
}

int main (int argc, char *argv[])
{
	yyparse();
	printf("Parsing finished!\n");	
	return 0;
}

%{
#include<stdio.h>
int yylex();
void yyerror(char *s); //Error dhore dibe line onujayi
%}

%token NOUN VERB OBJECT
%start S

%%
S: NOUN VERB OBJECT
%%


int main()
{
    yyparse();
    printf("Parsing Finished\n");
    return 0;

    /*
    This is for bison
    to run
    --------
    bison -d prog1.y


    prog1.y and prog1.l are needed now..previous thing has moved into prog2.l

    
    then run flex
    --------------
    flex prog1.l
    gcc lex.yy.x prog1.tab.c
    */
}

void yyerror(char *s)
{
    fprintf(stderr, "error: %s\n",s);
}
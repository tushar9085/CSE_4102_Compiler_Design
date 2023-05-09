%{
#include<stdio.h>
int yylex();
void yyerror(char *s);
%}

%token Batman Antman SpiderWoman Number Movie
%start S

%%
S: Batman Antman SpiderWoman Number Movie
%%


int main()
{
    //1803108
    yyparse();
    printf("Parsing Finished\n");
    return 0;
}

void yyerror(char *s)
{
    fprintf(stderr, "error: %s\n",s);
}
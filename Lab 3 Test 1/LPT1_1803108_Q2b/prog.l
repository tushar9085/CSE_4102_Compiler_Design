%option noyywrap

%{
    #include "prog.tab.h"
%}

%%
"Batman" {printf("%s -> Batman\n",yytext);}
"Antman" {printf("%s -> Antman\n",yytext);}
"SpiderWoman" {printf("%s -> SpiderWoman\n",yytext);}
"Movie" {printf("%s -> Movie\n",yytext);}
[0-9] {printf("%s -> Number\n",yytext);}
%%
%option noyywrap

%{
    #include "prog1.tab.h"
%}

%%
"I" {printf("%s -> Noun\n",yytext); return(NOUN);/*Rules 'I EAT RICE' I is a NOUN----This thing should be compact, there will no space or enter!*/}
"Eat" {printf("%s -> Verb\n",yytext); return(VERB);}
"Rice" {printf("%s -> Object\n",yytext); return(OBJECT);}
%%
%option noyywrap

%{

%}

%%
"I" {printf("%s -> Noun\n",yytext);/*Rules 'I EAT RICE' I is a NOUN----This thing should be compact, there will no space or enter!*/}
"Eat" {printf("%s -> Verb\n",yytext);}
"Rice" {printf("%s -> Object\n",yytext);}
"RUET" {printf("%s -> University\n",yytext);}
"KUET" {printf("%s -> University\n",yytext);}
"CSE" {printf("%s -> Dept\n",yytext);}
"EEE" {printf("%s -> Dept\n",yytext);}
"18" {printf("%s -> Series\n",yytext);}
"19" {printf("%s -> Series\n",yytext);}
[0-9][0-9] {printf("%s -> Two Digit\n",yytext);}
([A-Z|a-z|_])([A-Z|a-z|_|0-9|_])* {printf("%s -> Identifyer\n",yytext);/*Identifyer rules */}
" " {}
. {printf("%s -> Unknown\n",yytext);/*It means else part*/}
%%

int main()
{
    yylex();
    return 0;


    /*
    To compile
    ---------------
    flex prog1.l
    gcc lex.yy.c
    a
    */
}
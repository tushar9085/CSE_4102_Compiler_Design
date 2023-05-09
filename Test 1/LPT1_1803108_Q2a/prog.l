%option noyywrap

%{

%}


%%
"Batman" {printf("%s -> Batman\n",yytext);}
"Antman" {printf("%s -> Antman\n",yytext);}
"SpiderWoman" {printf("%s -> SpiderWoman\n",yytext);}
"Movie" {printf("%s -> Movie\n",yytext);}
[0-9] {printf("%s -> Number\n",yytext);}
%%

int main()
{
    //1803108
    //Batman 1 Movie
    //AntMan 2 Movie
    //SpiderWoman 4 Movie
    yylex();
    return 0;
}
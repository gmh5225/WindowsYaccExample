%option noyywrap

%{
#include <stdio.h>
#include <math.h>
#include <string>
#include "parser.h"
%}

%%
[0-9]+     {yylval.num = atoi(yytext);return TOK_NUM;}
[\n]	   {return TOK_EOF;}
[ \t]      {}
.          {return TOK_UNK;}

%%


%defines "parser.h"

%{
#include <stdio.h>
#include <math.h>
#include <string>

extern int yylex();
extern void yyerror(const char*);


%}

%union
{
  int num;
}

%token<num> TOK_NUM
%token TOK_UNK
%token TOK_EOF



%%
input : 
      | input line
      ;

line : exp
     | TOK_EOF
     | line exp
     ; 

exp : TOK_NUM {printf("val=%d\n",$<num>1);}
    ;  


%%

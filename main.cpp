#include <stdio.h>
#include "parser.h"

extern FILE *yyin;
extern int
yyparse();

int
main(int argc, char *argv[])
{
    if (argc > 1)
    {
        yyin = fopen(argv[1], "r");
        if (!yyin)
        {
            printf("open file failed:%s\n", argv[1]);
            return -1;
        }

        printf("read from file:%s\n", argv[1]);
    }
    else
    {
        printf("read from stdin\n");
    }

    yyparse();
    return 0;
}

void
yyerror(const char *msg)
{
    printf("error:%s\n", msg);
}

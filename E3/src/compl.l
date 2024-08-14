%option noyywrap yylineno
%{

//               that copies otherwise unmatched input to yyout.
#include <stdio.h>
#include <string.h>
#include "token.h"

#define MAX_IDENT_LEN 256

int yylval; // Variável para armazenar o valor dos tokens (números, booleanos, caracteres, etc.)


%}

%%
"//".* 				{ /* pula comentario */}
[ \n\r\t]+			{ /* pula espacejamento */}



"if"                        { return IF; }
"else"                      { return ELSE; }
"for"                       { return FOR; }
"while"                     { return WHILE; }
"return"                    { return RETURN; }
"function"                  { return FUNCTION; }
"boolean"                   { return BOOLEAN_TYPE; }
"integer"                   { return INTEGER_TYPE; }
"char"                      { return CHAR_TYPE; }
"string"                    { return STRING_TYPE; }
"true"                      { return TRUE; }
"false"                     { return FALSE; }
"void"                      { return VOID; }
"array"                     { return ARRAY; }

[a-zA-Z_][a-zA-Z0-9_]*  	{   return ID;  }

[0-9]+                  { return NUM; }
\'(\\.|[^\\\'])\'       {  return CHAR; }
\"([^\\\n]|(\\.))*\"      {  return STR; }
\'                      { 
                            return ERROR; 
                        }
\"      {  return ERROR; }


"<="                        { return LE; }
">="                        { return GE; }
"=="                        { return EQ; }
"!="                        { return NEQ; }
"&&"                        { return AND; }
"||"                        { return OR; }

"+"                         { return PLUS; }
"-"                         { return MINUS; }
"*"                         { return TIMES; }
"/"                         { return DIV; }
"%"                         { return MOD; }
"!"                         { return NOT; }
"<"                         { return LT; }
">"                         { return GT; }
"="                         { return ASSIGN; }
":"                         { return COLON; }
";"                         { return SEMICOLON; }
","                         { return COMMA; }
"("                         { return LPAREN; }
")"                         { return RPAREN; }
"["                         { return LBRACKET; }
"]"                         { return RBRACKET; }
"{"                         { return LBRACE; }
"}"                         { return RBRACE; }

. 				{ return ERROR; }


%%


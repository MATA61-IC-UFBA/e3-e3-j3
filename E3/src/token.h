/* token.h */

typedef enum {
        ID = 256, 
	IF, ELSE, FOR, WHILE, RETURN, FUNCTION, BOOLEAN_TYPE, INTEGER_TYPE, CHAR_TYPE, STRING_TYPE, TRUE, FALSE, VOID, ARRAY, // Keywords
    IDENTIFIER, 
 LE, GE, EQ, NEQ, AND, OR, // Operadores compostos
    PLUS, MINUS, TIMES, DIV, MOD, NOT, LT, GT, ASSIGN, COLON, SEMICOLON, COMMA, LPAREN, RPAREN, LBRACKET, RBRACKET, LBRACE, RBRACE, BACKSLASH, // Operadores e símbolos simples
	NUM, 
        CHAR,
	STR,
	ERROR
} token_t; 


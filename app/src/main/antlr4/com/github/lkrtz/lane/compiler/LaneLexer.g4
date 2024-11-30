lexer grammar LaneLexer;

// Keywords
DEFINE                  :   'define';
COND                    :   'cond';

// Literals
INTEGER_LITERAL         :   ('+'|'-')* NUMBER; 
FLOAT_LITERAL           :   ('+'|'-')* NUMBER '.' NUMBER
                        |   ('+'|'-')* '.' NUMBER
                        |   ('+'|'-')* NUMBER '.'
                        ;
BOOLEAN_LITERAL         :   'true' | 'false';

// Parentheses and delimiters
SYMBOL_LITERAL          :   '\'';
LPAREN                  :   '(';
RPAREN                  :   ')';
LBRACE                  :   '{';
RBRACE                  :   '}';
LBRACK                  :   '[';
RBRACK                  :    ']';
SEMI                    :   ';';
COMMA                   :   ',';
DOT                     :   '.';


WS                      : [ \t\n\r]+ -> skip ;
fragment NUMBER         :   [0-9]+;

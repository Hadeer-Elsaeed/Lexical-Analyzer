# Lexical Analyzer

- the first part of the compiler , lexical analysis is
considered a process of taking an input string of
characters (such as the source code of a computer
program) and producing a sequence of symbols
called lexical tokens .
- The lexical analyzer generator is required to
automatically construct a lexical analyzer from a
regular expression description of a set of tokens.
The tool is required to construct a nondeterministic
finite automata (NFA) for the given regular
expressions, combine these NFAs together with a
new starting state, convert the resulting NFA to a
DFA, minimize it and emit the transition table for
the reduced DFA together with a lexical analyzer
program that simulates the resulting DFA ma
- While dividing tokens ,it’s necessary to return to
symbol table to know the type of token .

 # Stages of a lexical analyzer  :

1-Scanner
Performs reading of input characters, removal of white
spaces and comments.
2-Lexical Analysis
Produce tokens as the output

# Interaction of lexical analyzer with parser :

Parser give signal (method)to lexical analyzer to give it
token and lexical analyzer gets character by character
with cooperation with symbol table and regular
expressions known if the character make a token or not..
If it makes token, lexical analyzer sends it to the parser.
Token → Set of strings defining an atomic element with
defined meaning.
Pattern→ rule describing a set of string (RE-DFA-NFA)
lexema→ a sequence of characters that match some
pattern.


# Example → Input string “ size:=a*20+b “

<token,lexeme>pairs:
- <id , size>
- <assign, := >
- <id , a>
- <arith_symbol ,
*>
- <integer , 20>
- <arith_symbol , +>
- <id , b>


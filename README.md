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

# Regular Expressions :
In most programming languages , tokens are
described by regular expressions , regular
expressions are used to describe search patterns .
it is used by lex ,flex ,jlex and jflex.
we specify the tokens to match using regular
expressions, and the action to perform in a
conventional programming language .. i will use
Jflex .

# JFlex :
A lexical analyzer generator takes as input a
specification with a set of regular expressions and
corresponding actions. It generates a program (a lexer)
that reads input, matches the input against the regular
expressions in the spec file, and runs the corresponding
action if a regular expression matched.
JFlex lexers are based on deterministic finite automata
(DFAs). They are fast, without expensive backtracking.
# 
"input" :
- description of token structure (regular expressions)
- info. on how to “process” different tokens  
# 
"output":
- implementation of NFA-based function ,convert NFA
to DFA and minimize DFA that recognizes tokens (as
specified by RE rules) processes them (as specified by
actions).
#
How JFlex works ?
JFlex takes a JFlex program and creates a Java file. I give
the JFlex program a suffix of “.jflex” . The default name
for the Java class generated is Yylex, and the code is
written to a file called Yylex.java, although this can be
changed, using the %class directive.
there are two provided constructors for the lexical
analyser class. The primary one takes a Reader object
as a parameter. The secondary one takes an
InputStream, which it converts into a Reader and
invokes the primary constructor. The parameter
represents an object that provides the input to be
lexically analysed. For example, the parameter can be a
StringReader (if we want to obtain the input from a
String) or an InputStream (if we want to obtain the text
from a file).
The lexical analyser class has a method for getting a
token. The default name for this method is yylex(),
although this can be changed, using the %function
directive. The default return type is Yytoken, although
this can be changed, using the %type directive. This
method loops, matching the input to regular
expressions, and performing the action associated with
that regular expression. If the action contains a return
statement, the method returns the value indicated.


# JFlex Program Format :
   /* User code */
   %%
   /* Options and declarations */
   %%
   /* Lexical Rules */
 #  
"Lexical Rules":
Rule = Pattern + Action
Pattern = Regular Expression
Action = Snippet of Java code (Actions triggered
whenever pattern matched)

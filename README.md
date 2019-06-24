# Lexical Analyzer
"lexical Analyzer"
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
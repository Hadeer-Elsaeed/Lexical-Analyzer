%%
%class TinyLexical
%standalone
digit =[0-9]
number ={digit}+
letter =[a-zA-Z]
identifier ={letter}+
newline=\n
whitespace =[\t]+

%%
"If"  {System.out.println("IF");}
"then"  {System.out.println("THEN");}
"else"  {System.out.println("ELSE");}
"end"  {System.out.println("END");}
"repeat"  {System.out.println("REPEAT");}
"until"  {System.out.println("UNTIL");}
"read"  {System.out.println("READ");}
"write"  {System.out.println("WRITE");}
"="  {System.out.println("EQ");}
">"  {System.out.println("GT");}
"<"  {System.out.println("LT");}
":=" {System.out.println("ASSIGN");}
";" {System.out.println("SWMI");}
{number} {System.out.printf("NUM(%d)\n",Integer.parseInt(yytext()));}
{identifier} {System.out.printf("ID(%s)\n",(yytext()));}
{whitespace} {/*skip white spaces*/}
\{[^}]*\} {/*skip comments*/}
{newline} {/*skip new lines*/}
. {System.out.printf("UNKNOWN SYMBOL(%s)\n",
 yytext());}


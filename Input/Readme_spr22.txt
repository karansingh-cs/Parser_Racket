You are given several input files: 

input1.txt:  A minimal program, but enough is there to be valid. 
input2.txt: Not quite so minimal, but this should parse OK. Note that your program only needs to do parsing, not semantic analysis; your need not worry about undeclared or uninitialized variables. You are concerned only with the mechanical form of the code. 
input3.txt: This has an error. The "then" will be interpreted as an identifier, and our grammar does not allow 2 identifiers in a row. 
input4.txt: Binary v. unary minus. This should parse, as adding -273 to a variable should be legal. (The + begins the etail, the - is a numsign.) An additional operator would be illegal, of course. 
input5.txt: Syntax error, illegal character ('*') in arithmetic expression. 

#lang brag

;;BASED ON GRAMMAR::

;;program -> {stmt_list} $$
program : BEGIN stmt_list END S S

;;stmt_list -> stmt stmt_list
stmt_list : stmt [stmt_list]*

;;stmt_list -> epsilon
;;stmt -> id = expr ;
;;| if (expr) stmt
;;| read id ;
;;| write expr ;
stmt : ID ASSIGN-OP expr BOUND
     | C-START expr C-STOP stmt
     | READ ID BOUND
     | WRITE expr BOUND

;;expr -> id etail | num etail
;;etail -> + expr | - expr | epsilon
expr: (ID|NUM|numsign NUM) [numsign expr]*


;;id -> [a-zA-Z]+
;;num -> numsign digit digit*
;;numsign -> + | - | epsilon
numsign : ADD-OP | MINUS-OP | ""






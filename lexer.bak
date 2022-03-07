#lang br/quicklang
(require brag/support racket/contract)

(define (token? x)
  (or (eof-object? x) (token-struct? x)))


(define (make-tokenizer port)
  (port-count-lines! port)
  (define (next-token)

(define then-lexer 
 (lexer 
   [#\t  (display "This has an error - then .\n")]))

(define-lex-abbrevs
   (lower-letter (:/ "a" "z"))
   (upper-letter (:/ #\A #\Z))
   (digit (:/ "0" "9")))
      
(define lexer-main
      (lexer
       
       ["{" (token 'BEGIN lexeme #:position (pos lexeme-start)
                        #:line (line lexeme-start)
                        #:column (col lexeme-start)
                        #:span (- (pos lexeme-end)
                                  (pos lexeme-start)))]
       ["}" (token 'END lexeme #:position (pos lexeme-start)
                        #:line (line lexeme-start)
                        #:column (col lexeme-start)
                        #:span (- (pos lexeme-end)
                                  (pos lexeme-start)))]
       ["$" (token 'S lexeme #:position (pos lexeme-start)
                        #:line (line lexeme-start)
                        #:column (col lexeme-start)
                        #:span (- (pos lexeme-end)
                                  (pos lexeme-start)))]
       
       ["read" (token 'READ lexeme #:position (pos lexeme-start)
                        #:line (line lexeme-start)
                        #:column (col lexeme-start)
                        #:span (- (pos lexeme-end)
                                  (pos lexeme-start)))]
       ["write" (token 'WRITE lexeme #:position (pos lexeme-start)
                        #:line (line lexeme-start)
                        #:column (col lexeme-start)
                        #:span (- (pos lexeme-end)
                                  (pos lexeme-start)))]
       [";" (token 'BOUND lexeme #:position (pos lexeme-start)
                        #:line (line lexeme-start)
                        #:column (col lexeme-start)
                        #:span (- (pos lexeme-end)
                                  (pos lexeme-start)))]
       
       [whitespace (token 'EMPTY lexeme #:position (+ (pos lexeme-start))
                          #:line (line lexeme-start)
                          #:skip? #t)]
       
       ["if (" (token 'C-START lexeme #:position (pos lexeme-start)
                        #:line (line lexeme-start)
                        #:column (col lexeme-start)
                        #:span (- (pos lexeme-end)
                                  (pos lexeme-start)))]
       
       [")" (token 'C-STOP lexeme #:position (pos lexeme-start)
                        #:line (line lexeme-start)
                        #:column (col lexeme-start)
                        #:span (- (pos lexeme-end)
                                  (pos lexeme-start)))]
       
       ["-" (token 'MINUS-OP lexeme #:position (pos lexeme-start)
                        #:line (line lexeme-start)
                        #:column (col lexeme-start)
                        #:span (- (pos lexeme-end)
                                  (pos lexeme-start)))]
       ["=" (token 'ASSIGN-OP lexeme #:position (pos lexeme-start)
                        #:line (line lexeme-start)
                        #:column (col lexeme-start)
                        #:span (- (pos lexeme-end)
                                  (pos lexeme-start)))]
       
       ["+" (token 'ADD-OP lexeme #:position (pos lexeme-start)
                        #:line (line lexeme-start)
                        #:column (col lexeme-start)
                        #:span (- (pos lexeme-end)
                                  (pos lexeme-start)))]
     
       [(:+ (:or lower-letter upper-letter)) (token 'ID lexeme
                        #:position (+ (pos lexeme-start))
                        #:line (line lexeme-start))]
       
       [(:+ digit) (token 'NUM (string->number lexeme)
                         #:position (+ (pos lexeme-start))
                         #:line (line lexeme-start))]
       
       [any-char (token 'MISC lexeme
                        #:position (+ (pos lexeme-start))
                        #:line (line lexeme-start))]))
    
    (lexer-main port))
  next-token)

(provide make-tokenizer)

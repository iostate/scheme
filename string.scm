; DrRacket String API Exercise

;Define a string
(display "Defining a_string with contents \"okwhew\"...\n")
(define a_string (string #\o #\k #\w #\h #\e #\w))
(display a_string)
(display "#\n")


;Check if a_string is a string
(display (string? a_string))
(display "\n\n")

;Make a string of length 5 of the same characters
(display "Making a string of 5 z's... \n")
(display (make-string 5 #\z))
(display "\n\n")


(display "Displaying string length of a_string... \n")
(display (string-length a_string))
(display "\n\n")

(display "Printing index 0 of a_string... \n")
(display (string-ref a_string 0))
(display "\n\n")

(display "Setting the first index of a_string to 0 and then printing it...\n")
(string-set! a_string 0 #\0)
(display a_string)
(display "\n\n")

(display "Create a new string with the substring of a_string from index 0 to 3...\n")
(define sub_a_string (substring a_string 0 3))
(display sub_a_string)
(display "\n")

(display "Display the substring from the beginning to the end of a_string...\n")
(display (substring a_string 0 (string-length a_string)))
(display "\n")


;Find a character in a string
(define (find-char c s)
    (for/first ([x s]
        [i (in-naturals)]
                #:when (char=? c x))
      i))

;Find the character in a string
(find-char #\m "Hello man")

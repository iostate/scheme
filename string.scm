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

(display "Replace the first 5 letters in a_new_string with \"rooby\" \n")
(define a_new_string (string #\w #\r #\e #\s #\t #\l #\e #\ #\w #\i #\t #\h #\ #\g #\i #\t #\ #\m #\e #\r #\g #\e))
(string-copy! a_new_string 0 "rooby")
(display a_new_string)

(display "Replace the last 5 letters in a_new_string with \"rooby\" \n")
(string-copy! a_new_string (- (string-length a_new_string) 5) "rooby")
(display a_new_string)

(display "Append two strings together\n")
(string-append "Critter" "Banana")
(display "\n")

(display "Create a string of characters\n")
(display (string->list "CritterBanana"))
(display "\n")


(define banana_string (string #\B #\a #\n #\a #\n #\a))
(define banan2_string (string #\b #\a #\n #\a #\n #\a))
;Compare two strings to see whether one is increasing lexographically and display a boolean.
;Returns true if the first parameeter is lexographically increasing compared to the second, otherwise, returns false.
(display "Is banana_string increasing lexographically compared to banan2_string? \n")
(display (string<? banana_string banan2_string))
(display "\n")


;Modify the first letter of banana_string to a lowercase b
(string-set! banana_string 0 #\b)
;Modify the last letter of banan2_string to an uppercase
(string-set! banan2_string (- (string-length banan2_string) 1) #\A)
;Compare whether the parameters are nondecreasing
(display (string<=? banana_string banan2_string))
(display "\n")





;Compare two strings to see whether one is decreasing lexographically and display a boolean

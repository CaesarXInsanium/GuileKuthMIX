(use-modules (srfi srfi-64)
             (knuth byte))

;; testing internal representation of bytes
(test-begin "mixbyte")
(define a (make-byte 1))
;; is this a byte object?
(test-assert (byte? a))
(test-end "mixbyte")

;; bits have to be defined in this specific syntax
(test-begin "selector")

(define b (byte #*101010))
(test-assert (bitvector? b))
(test-assert (byte? b))

(test-assert (bit0 b))
(test-assert (not (bit1 b)))
(test-assert (bit2 b))
(test-assert (not (bit3 b)))
(test-assert (bit4 b))
(test-assert (not (bit5 b)))

(test-end "selector")

(test-begin "compare")
(define c (byte #*101010))
(define d (byte "101010"))
(test-assert (byte=? c d))
(test-end "compare")

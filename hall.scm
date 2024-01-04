(hall-description
  (name "knuth")
  (prefix "guile")
  (version "0.1")
  (author "Caesar X Insanium")
  (copyright (2024))
  (synopsis "")
  (description "")
  (home-page "")
  (license gpl3)
  (dependencies `())
  (skip ())
  (files (libraries
           ((directory
             "knuth"
             ((scheme-file "register")
              (scheme-file "byte")
              (scheme-file "utils")
              (scheme-file "word")))
            (scheme-file "knuth")))
         (tests ((directory
                   "tests"
                   ((scheme-file "test-byte")
                    (scheme-file "test-word")
                    (scheme-file "test")))))
         (programs
           ((directory
              "scripts"
              ((in-file "mixasm") (in-file "mixvm")))))
         (documentation
           ((directory "doc" ((texi-file "knuth")))
            (org-file "README")
            (text-file "README.org")
            (text-file "COPYING")
            (text-file "HACKING")
            (text-file "TAGS")
            (symlink "README" "README.org")))
         (infrastructure
           ((scheme-file "hall")
            (text-file ".gitignore")
            (scheme-file "guix")))))

;; SPDX-License-Identifier: BSD-3-Clause
;; Copyright (c) 2023, Pseudomata

;; The R7RS Scheme standard module is called a library and instantiated
;; using the (define-library ...) form.
;; See http://gambitscheme.org/latest/manual/#Modules for more information.
(define-library (example)
  ;; Exports are definitions (functions and identifiers) the library exposes to users.
  (export example-identifier
          example-function)
  ;; Imports are other Scheme libraries we want to use in our library.
  ;; e.g. srfi's can be added here, along with any built-in libraries.
  (import (scheme base)
          (scheme write))

  ;; We can include our implementation in this .sld file in the (begin ...) form
  ;; for very simple libraries. The alternative is using an include.
  ;;
  ;; (begin
  ;;   (define example-identifier "This is an exported string")
  ;;   (define (example-function str)
  ;;     (display str)
  ;;     (display newline))
  ;; )

  ;; We can include other Scheme files with our implementation. (import ...) takes
  ;; a path that is relative to this .sld file.
  (include "example.scm"))

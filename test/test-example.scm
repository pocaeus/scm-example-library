;; SPDX-License-Identifier: BSD-3-Clause
;; Copyright (c) 2023, Pseudomata

;; SRFI-64 defines a basic testing API.
;; See https://srfi.schemers.org/srfi-64/srfi-64.html
(import (srfi 64)
        (example))

(test-begin "example-test")
(test-assert (string? example-identifier))
(test-equal "This is an exported string" example-identifier)
(test-error #f (example-function "foo"))
(test-end "example-test")

(require 'ert)

;; TEST DEPENDENCIES

(load-file
    (expand-file-name "../wik-mode-elreg.el"
        (file-name-directory (or load-file-name buffer-file-name))
    ))

(load-file
    (expand-file-name "../wik-mode.el"
        (file-name-directory (or load-file-name buffer-file-name))
    ))

(setq
    wik-mode-dir
    (expand-file-name "../"
        (file-name-parent-directory  (or load-file-name buffer-file-name))
    )) ; test-peek-dir.el, test-peek-nested.el require wik-mode-dir

;; WIK COMPLETE TESTS

(load-file 
    (expand-file-name "test-complete.el"
        (file-name-directory (or load-file-name buffer-file-name))
    ))

(load-file 
    (expand-file-name "test-complete-no-peek.el"
        (file-name-directory (or load-file-name buffer-file-name))
    ))


;; WIK PEEK TESTS

(load-file 
    (expand-file-name "test-peek.el"
        (file-name-directory (or load-file-name buffer-file-name))
    ))

(load-file 
    (expand-file-name "test-peek-dir.el"
        (file-name-directory (or load-file-name buffer-file-name))
    )) ; requires wik-mode-dir variable

(load-file
    (expand-file-name "test-peek-nested.el"
        (file-name-directory (or load-file-name buffer-file-name))
    )) ; requires wik-mode-dir variable

;; WIK PEEK DISCARD TESTS
(load-file 
    (expand-file-name "test-peek-discard-no-peek.el"
        (file-name-directory (or load-file-name buffer-file-name))
    ))


;; RUN TESTS
(ert-run-tests-batch-and-exit)

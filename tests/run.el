(require 'ert)
(load-file
    (expand-file-name "../wik-mode.el"
        (file-name-directory (or load-file-name buffer-file-name))
    ))
(load-file 
    (expand-file-name "test-peek.el"
        (file-name-directory (or load-file-name buffer-file-name))
    ))

(ert-run-tests-batch-and-exit)

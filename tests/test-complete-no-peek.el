
;;(setq debug-on-error t)
(ert-deftest wik-complete-no-peek ()
  "Test that `wik-complete` without a peek fails to modify buffer, and prints a failure message"
  (interactive)
  (with-temp-buffer
    ;; arrange
    (insert "\n./tests\n")
    ;; act
    (goto-char (point-min))
    (search-forward "tests")
    ;; act+assert
    (should-error (wik-complete) :type 'wik-mode-expected-peek-error)
    (should
        (equal
            (buffer-string)
            "\n./tests\n"
        )
    )
    (message "BUFFER AFTER:\n%s" (buffer-string))
  )
)

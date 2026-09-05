
;;(setq debug-on-error t)
(ert-deftest wik-peek-discard-no-peek ()
  "Test that `wik-peek-discard` without a peek fails to modify buffer, and prints a failure message"
  (interactive)
  (with-temp-buffer
    ;; arrange
    (insert "\ntest\n")
    ;; act
    (goto-char (point-min))
    (search-forward "test")
    ;; act+assert
    (should-error (wik-peek-discard) :type 'wik-mode-expected-peek-error)
    (should
        (equal
            (buffer-string)
            "\ntest\n"
        )
    )
    (message "BUFFER AFTER:\n%s" (buffer-string))
  )
)

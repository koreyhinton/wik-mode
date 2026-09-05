
(setq debug-on-error t)
(ert-deftest wik-complete-appends-to-path ()
  "Test that `wik-complete` appends chosen filename at cursor point"
  (interactive)
  (with-temp-buffer
    ;; arrange
    (insert "<<<<<<< PATH PEEKED\n./\n=======\n./tests\n>>>>>>> PEEK")
    ;; act
    (goto-char (point-min))
    (search-forward "tests")
    (wik-complete)
    ;; assert
    (should
        (equal
            (buffer-string)
            (file-name-concat "./" "tests")
        )
    )
    (message "BUFFER AFTER:\n%s" (buffer-string))
  )
)

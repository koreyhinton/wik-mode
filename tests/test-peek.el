
;;(setq debug-on-error t)
(ert-deftest wik-peek-discard-reverts-to-path ()
  "Test that `wik-peek-discard` removes file content (and markers) and restores original path"
  (interactive)
  (with-temp-buffer
    ;; arrange
    (insert "<<<<<<< PATH PEEKED\n")
    (insert wik-mode-dir)
    (insert "tests/some-file.txt\n=======\n(file contents)\n>>>>>>> PEEK")
    (message "BUFFER BEFORE:\n%s" (buffer-string))
    ;; act
    (goto-char (point-min))
    (wik-peek-discard)
    ;; assert
    (should (equal
        (buffer-string)
        (concat wik-mode-dir "tests/some-file.txt")
    ))))

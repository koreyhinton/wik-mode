
;;(setq debug-on-error t)
(ert-deftest wik-peek-lists-dir-contents ()
  "Test that `wik-peek` lists out directory contents"
  (interactive)
  (with-temp-buffer
    ;; arrange
    (insert wik-mode-dir)
    ;; act
    (goto-char (point-min))
    (search-forward "wik-mode")
    (wik-peek)
    ;; assert
    (should
        (string-match-p
            "./README.md"
            (buffer-string)
        )
    )
    (message "BUFFER AFTER:\n%s" (buffer-string))
  )
)

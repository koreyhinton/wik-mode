
;;(setq debug-on-error t)
(ert-deftest wik-peek-nested ()
    "Test that `wik-peek` inside a peek fails to modify buffer, and prints a not supported message"
    (interactive)
    (let
        ((content (concat "<<<<<<< PATH PEEKED\n" wik-mode-dir "\n=======\n./README.md\n>>>>>>> PEEK")))
        (with-temp-buffer
            ;; arrange
            (insert content)
            (message "BUFFER BEFORE:\n%s" (buffer-string))
            ;; act
            (goto-char (point-min))
            (search-forward "README.md")
            ;; act+assert
            (should-error (wik-peek) :type 'wik-mode-nested-peek-error)
            (should (equal (buffer-string) content))
        )
    )
)

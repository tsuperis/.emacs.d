;; display full path on title bar
(setq frame-title-format "%f")

;; create backup to tmpdir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; +x permission
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

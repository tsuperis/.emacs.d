(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))

(use-package go-mode
  :mode ("\\.go\\'" . go-mode)
  :hook (go-mode . lsp-go-install-save-hooks))

(use-package go-eldoc
  :hook (go-mode . go-eldoc-setup))

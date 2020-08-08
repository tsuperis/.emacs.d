(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))

(use-package go-eldoc)

(use-package go-mode
  :ensure t
  :after (go-eldoc)
  :mode ("\\.go\\'" . go-mode)
  :hook (go-mode . (lambda ()
                     (lsp)
                     (lsp-go-install-save-hooks)
                     (go-eldoc-setup))))

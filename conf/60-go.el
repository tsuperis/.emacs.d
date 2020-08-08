(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))

(use-package go-eldoc)

(use-package go-mode
  :ensure t
  :after (go-eldoc)
  :mode ("\\.go\\'" . go-mode)
  :hook ((go-mode . lsp-go-install-save-hooks)
         (go-mode . lsp-deferred)
         (go-mode . go-eldoc-setup)
         (go-mode . (lambda ()  ;; company-goを使う
                      (set (make-local-variable 'company-backends) '(company-go))
                      (company-mode)))))

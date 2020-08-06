(use-package lsp-mode
  :ensure t
  :hook
  (go-mode . lsp)
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :ensure t
  :after (lsp)
  :hook
  (lsp-mode . lsp-ui-mode))

(use-package company-lsp
  :after (company lsp)
  :custom
  (company-lsp-cache-candidates t) ;; always using cache
  (company-lsp-async t)
  (company-lsp-enable-recompletion nil))

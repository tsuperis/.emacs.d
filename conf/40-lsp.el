(use-package lsp-mode
  :bind (:map lsp-mode-map
              ("M-*" . xref-pop-marker-stack)
              ("M-." . xref-find-definitions)
              ("M-/" . xref-find-references))
  :custom
  (lsp-prefer-capf t)
  (lsp-prefer-flymake 'flymake)
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :after (lsp)
  :hook
  (lsp-mode . lsp-ui-mode)
  :config
  (lsp-ui-doc-enable t)
  (lsp-ui-doc-header t))

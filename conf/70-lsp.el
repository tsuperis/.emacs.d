(use-package lsp-mode
  :hook
  ((
    go-mode
    ) . lsp)
  :custom
  (lsp-prefer-capf t)
  (lsp-prefer-flymake 'flymake)
  :commands (lsp lsp-rename))

(use-package lsp-ui
  :requires (lsp-mode)
  :hook
  (lsp-mode . lsp-ui-mode)
  :custom
  (lsp-ui-doc-enable t)
  (lsp-ui-peek-enable t)
  :bind
  (:map lsp-mode-map
        ("C-c d" . my/toggle-lsp-ui-doc)
        ("C-c r" . lsp-rename)
        ("M-." . lsp-ui-peek-find-definitions)
        ("M-?" . lsp-ui-peek-find-references))
  :preface
  (defun my/toggle-lsp-ui-doc ()
    (interactive)
    (if lsp-ui-doc-mode
        (progn
          (message "Hide lsp-ui-doc")
          (lsp-ui-doc-mode -1)
          (lsp-ui-doc-hide))
      (progn
        (message "Show lsp-ui-doc")
        (lsp-ui-doc-mode 1)))))

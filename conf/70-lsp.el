(use-package lsp-mode
  :after (company)
  :hook
  ((
    go-mode
    python-mode
    ) . lsp)
  (lsp-managed-mode . (lambda () (setq-local company-backends '(company-capf :with company-yasnippet))))
  :custom
  (lsp-modeline-diagnostics-scope :project)
  (gc-cons-threshold 12800000)
  (read-process-output-max (* 1024 1024 3))
  (lsp-enable-file-watchers nil)
  (lsp-print-performance t)
  :bind
  (:map lsp-mode-map
        ("C-c r" . lsp-rename)
        )
  )

(use-package lsp-ui
  :after (lsp-mode)
  :hook
  (lsp-mode . lsp-ui-mode)
  :custom
  (lsp-ui-doc-enable t)
  (lsp-ui-doc-header t)
  (lsp-ui-doc-use-childframe t)
  (lsp-ui-doc-use-webkit t)
  (lsp-ui-peek-enable t)
  (lsp-ui-flycheck-enable nil)
  :bind
  (:map lsp-mode-map
        ("M-." . lsp-ui-peek-find-definitions)
        ("M-?" . lsp-ui-peek-find-references)
        ("C-c d" . my/toggle-lsp-ui-doc))
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
        (lsp-ui-doc-mode 1))))
  )

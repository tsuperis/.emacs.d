(use-package lsp-mode
  :after (company)
  :hook
  ((
    go-mode
    ) . lsp)
  :custom
  (lsp-modeline-diagnostics-scope :project)
  (lsp-idle-delay 0.1)
  (gc-cons-threshold 100000000)
  (read-process-output-max (* 1024 1024))
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

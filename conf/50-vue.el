(use-package vue-mode
  :mode
  ("//.vue//'" . vue-mode)
  :custom
  (mmm-js-mode-enter-hook (lambda () (setq syntax-ppss-table nil)))
  (mmm-typescript-mode-enter-hook (lambda () (setq syntax-ppss-table nil)))
  )

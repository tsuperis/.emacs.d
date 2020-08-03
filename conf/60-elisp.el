(use-package eldoc
  :hook (emacs-lisp-mode . turn-on-eldoc-mode)
  :config
  (setq eldoc-idle-delay 0.1)
  (setq eldoc-echo-area-use-multiline-p t))

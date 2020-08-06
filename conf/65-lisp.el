(use-package paredit
  :commands paredit-mode
  :diminish paredit-mode
  :hook ((scheme-mode . enable-paredit-mode)
         (emacs-lisp-mode . enable-paredit-mode)))

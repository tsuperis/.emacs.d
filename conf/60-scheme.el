(use-package geiser
  :hook (scheme-mode . geiser-mode)
  :custom
  (geiser-active-implementations '(racket)))

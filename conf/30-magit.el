(use-package magit
  :bind
  ("C-x g" . magit-status))

(use-package git-gutter+
  :config
  (global-git-gutter+-mode t))

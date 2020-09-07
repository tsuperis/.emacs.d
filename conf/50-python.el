(use-package python
  :mode
  ("\\.py\\'" . python-mode)
  :hook
  (python-mode . (lambda ()
                   (setq indent-tabs-mode nil)
                   (setq indent-level 4)
                   (setq tab-width 4)
                   (setq python-indent 4)
                   (setq whitespace-style '(face tabs tab-mark))
                   (setq whitespace-display-mappings
                         '((tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))
                   (add-to-list 'write-file-functions 'delete-trailing-whitespace)
                   ))
  (before-sav)
  )

(use-package pyenv-mode
  :hook
  (python-mode . pyenv-mode)
  )

(use-package pyenv-mode-auto
  :after (pyenv-mode)
  )

(use-package pipenv
  :hook (python-mode . pipenv-mode)
  :init
  (setq
   pipenv-projectile-after-switch-function
   #'pipenv-projectile-after-switch-extended))

(use-package elpy
  :bind
  (:map python-mode-map
        ("M-." . elpy-goto-assignment)
        ("M-*" . elpy-goto-definition))
  :hook
  (python-mode . elpy-enable)
  (before-save . whitespace-cleanup)
  :custom
  (elpy-rpc-python-command "python3")
  (elpy-rpc-virtualenv-path 'current)
  :config
  (delete `elpy-module-highlight-indentation elpy-modules)
  (when (require 'flycheck nil t)
    (remove-hook 'elpy-modules 'elpy-module-flymake)
    (add-hook 'elpy-mode-hook 'flycheck-mode))
  )

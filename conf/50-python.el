(use-package python
  :mode
  ("\\.py\\'" . python-mode)
  )

(use-package pyenv-mode
  :hook
  (python-mode . pyenv-mode)
  )

(use-package pyenv-mode-auto
  :after (pyenv-mode)
  )

(use-package elpy
  :hook
  (python-mode . elpy-enable)
  (before-save . whitespace-cleanup)
  :custom
  (elpy-rpc-virtualenv-path 'current)
  :config
  (delete `elpy-module-highlight-indentation elpy-modules)
  )

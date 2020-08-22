(use-package python
  :mode
  ("\\.py\\'" . python-mode)
  :init
  (setq-default lsp-pyls-configuration-sources ["flake8"])
  )

(use-package pyenv-mode
  :hook
  (python-mode . pyenv-mode)
  )

(use-package pyenv-mode-auto
  :after (pyenv-mode)
  )

;; (use-package elpy
;;   :hook
;;   (python-mode . elpy-enable)
;;   (before-save . whitespace-cleanup)
;;   :custom
;;   (elpy-rpc-virtualenv-path 'current)
;;   :config
;;   (delete `elpy-module-highlight-indentation elpy-modules)
;;   (when (require 'flycheck nil t)
;;     (remove-hook 'elpy-modules 'elpy-module-flymake)
;;     (add-hook 'elpy-mode-hook 'flycheck-mode))
;;   )

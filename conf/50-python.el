(use-package python
  :mode
  ("\\.py\\'" . python-mode)
  )

(use-package pyenv-mode
  :hook
  (python-mode . pyenv-mode)
  (pyenv-mode . ssbb-pyenv-hook)
  :preface
  (defun ssbb-pyenv-hook ()
    "Automatically activates pyenv version if .python-version file exists."
    (f-traverse-upwards
     (lambda (path)
       (let ((pyenv-version-path (f-expand ".python-version" path)))
         (if (f-exists? pyenv-version-path)
             (pyenv-mode-set (s-trim (f-read-text pyenv-version-path 'utf-8))))))))
  )

(use-package elpy
  :hook
  (python-mode . elpy-enable)
  :custom
  (elpy-rpc-virtualenv-path 'current)
  )

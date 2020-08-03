(use-package helm
  :bind* (("M-x" . helm-M-x)
          ("M-y" . helm-show-kill-ring)
          ("C-x C-f" . helm-find-files)
          ("C-x b" . helm-mini)
          ("C-M-o" . helm-occur))
  :config
  (helm-mode t))

(use-package helm-descbinds
  :after (helm)
  :commands helm-descbinds
  :bind* ("C-? b" . helm-descbinds))

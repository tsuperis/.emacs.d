(bind-keys* ("C-?" . help-command)
            ("C-h" . delete-backward-char)
            ("C-S-h" . backward-kill-word)
            ;("C-k" . paredit-kill)
            ("C-t" . other-window)
            ("C-c l" . toggle-truncate-lines)
            )

(use-package hydra
 :ensure t
 :bind
 ([f2] . hydra-zoom/body)
 :config
 (defhydra hydra-zoom (:hint t)
   "zoom"
   ("^" text-scale-increase "in")
   ("-" text-scale-decrease "out")
   ("q" nil "quit"))
 )

(use-package ivy
  :custom
  (ivy-use-virtual-buffers t)
  (ivy-count-format "(%d/%d) ")
  (ivy-wrap t)
  :init
  (when (setq enable-recursive-minibuffers t)
    (minibuffer-depth-indicate-mode t))
  :config
  (ivy-mode t))

(use-package counsel
  :after (ivy)
  :bind (("M-y" . counsel-yank-pop)
         ("C-x C-b" . ivy-switch-buffer))
  :config
  (defun my-ivy-kill-buffer (buf)
    (interactive)
    (if (get-buffer buf)
        (kill-buffer buf)
      (setq recentf-list (delete (cdr (assoc buf ivy--virtual-buffers)) recentf-list))))
  (ivy-set-actions
   'ivy-switch-buffer
   '(("k"
      (lambda (x)
        (my-ivy-kill-buffer x)
        (ivy--reset-state ivy-last))
      "kill"
      )))
  (counsel-mode t))

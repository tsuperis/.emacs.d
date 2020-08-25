;; theme setting
(use-package doom-themes
  :custom
  (doom-themes-enable-italic t)
  (doom-themes-enable-bold t)
  :config
  (load-theme 'doom-dracula t)
  (doom-themes-neotree-config)
  (doom-themes-org-config))

(use-package all-the-icons
  :config
  (let ((font-dest (cl-case window-system
                     (x (concat (or (getenv "XDG_DATA_HOME")
                                    (concat (getenv "HOME") "/.local/share"))
                                "/fonts/"))
                     (mac (concat (getenv "HOME") "/Library/Fonts/"))
                     (ns (concat (getenv "HOME") "/Library/Fonts/")))))
    (unless (file-exists-p (concat font-dest "all-the-icons.ttf"))
      (all-the-icons-install-fonts t))))

(use-package neotree
  :after (all-the-icons)
  :bind
  ("C-c t" . neotree-show)
  :custom
  (neo-theme (if (display-graphic-p) 'icons 'arrow))
  (neo-show-hidden-files t))

(global-hl-line-mode t)

;; paren ()
(setq show-paren-delay 0
      show-paren-style 'mixed)
(show-paren-mode t)

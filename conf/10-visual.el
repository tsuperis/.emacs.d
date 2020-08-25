;; display full path on title bar
(setq frame-title-format "%f")

;; install font
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

;; theme setting
(use-package doom-themes
  :after (all-the-icons)
  :custom
  (doom-themes-enable-italic t)
  (doom-themes-enable-bold t)
  :config
  (load-theme 'doom-molokai t)
  (doom-themes-visual-bell-config)
  (doom-themes-neotree-config)
  (doom-themes-org-config))

(use-package doom-modeline
  :hook
  (after-init . doom-modeline-mode))

;; show column number
(column-number-mode t)

;; hilight cursor line
(global-hl-line-mode t)

;; hilight paren
(setq show-paren-delay 0
      show-paren-style 'mixed)
(show-paren-mode t)


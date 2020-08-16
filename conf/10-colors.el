;; theme setting
(load-theme 'manoj-dark t)

;; current line highlight
(defface my-hl-line-face
  '((((class color) (background dark))
     (:background "gray17" t))
    (((class color) (background light))
     (:background "LightYellow" t))
    (t (:bold t)))
  "hl-line's my face")
(setq hl-line-face 'my-hl-line-face)
(global-hl-line-mode t)

;; paren ()
(setq show-paren-delay 0
      show-paren-style 'mixed)
(show-paren-mode t)

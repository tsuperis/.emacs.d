(use-package yasnippet
  :init
  (yas-global-mode t))

(use-package company
  :after (yasnippet)
  :bind
  (:map company-active-map
   ("<tab>" . company-complete-selection)
   ("C-n" . company-select-next)
   ("C-p" . company-select-previous)
   ("C-s" . company-filter-candidates)
   ("C-h" . delete-backward-char)   
   :map company-search-map
   ("C-n" . company-select-next)
   ("C-p" . company-select-previous))
  :init
  (global-company-mode t)
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 1)
  (company-selection-wrap-around t)
  (company-mode/enable-yas t)
  :config
  (set-face-attribute 'company-tooltip nil
                      :foreground "black" :background "lightgrey")
  (set-face-attribute 'company-tooltip-common nil
                      :foreground "black" :background "lightgrey")
  (set-face-attribute 'company-tooltip-common-selection nil
                      :foreground "white" :background "steelblue")
  (set-face-attribute 'company-tooltip-selection nil
                      :foreground "black" :background "steelblue")
  (set-face-attribute 'company-preview-common nil
                      :background nil :foreground "lightgrey" :underline t)
  (set-face-attribute 'company-scrollbar-fg nil
                      :background "LightSteelBlue3")
  (set-face-attribute 'company-scrollbar-bg nil
                      :background "gray40"))

(use-package yasnippet)

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
  :hook
  (company-mode . yas-minor-mode)
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 1)
  (company-selection-wrap-around t)
  (company-mode/enable-yas t)
  )

(use-package company-box
  :after (company all-the-icons)
  :hook (company-mode . company-box-mode)
  )

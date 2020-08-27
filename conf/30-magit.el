(use-package magit)

(use-package git-gutter+
  :config
  (global-git-gutter+-mode t))

(when (and (require 'magit nil t) (require 'git-gutter+ nil t))
  (bind-key
   "C-c g"
   (defhydra hydra-git (:color red :hint nil)
     "
^Magit^             ^Gutter^
^^^^^^^^-------------------------------
[_m_]agit-status    [_p_]rev
magit-[_b_]lame     [_n_]ext
^ ^                 [_s_]tage
^ ^                 [_d_]iff
^ ^                 [_r_]evert
"
     ("m" magit-status :exit t)
     ("b" magit-blame :exit t)
     ("p" git-gutter+-previous-hunk)
     ("n" git-gutter+-next-hunk)
     ("s" git-gutter+-stage-hunks)
     ("d" git-gutter+-popup-hunk)
     ("r" git-gutter+-revert-hunk)
     )
   )
  )

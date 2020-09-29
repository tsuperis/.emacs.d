(use-package dockerfile-mode
  :mode
  ("^Dockerfile\([.\-_].+\)?$" . dockerfile-mode))

(use-package docker-compose-mode
  :mode
  ("^docker-compose\([.\-_].+\)?\.yml$" . docker-compose-mode))

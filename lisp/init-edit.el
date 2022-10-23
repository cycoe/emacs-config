(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq-default make-backup-files nil)

(use-package linum
  :hook
  (prog-mode . linum-mode))

(use-package hl-line
  :hook
  (after-init . global-hl-line-mode))

(use-package gruvbox-theme
  :init
  (load-theme 'gruvbox-light-medium))

(use-package treemacs)

(use-package which-key
  :init
  (which-key-mode))

(use-package magit)

(provide 'init-edit)

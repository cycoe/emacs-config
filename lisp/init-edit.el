(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq-default make-backup-files nil
              indent-tabs-mode nil)

(use-package linum
  :hook
  (prog-mode . linum-mode))

(use-package hl-line
  :hook
  (after-init . global-hl-line-mode))

(use-package moe-theme
  :init
  (load-theme 'moe-light))

(use-package treemacs)

(use-package which-key
  :init
  (which-key-mode))

(use-package ace-window
  :bind
  (("C-x o" . 'ace-window)))

(use-package hl-todo
  :init
  (hl-todo-mode))

(use-package mini-modeline
  :init
  (mini-modeline-mode))

(use-package nyan-mode)

(use-package diff-hl)

;; Enable rich annotations using the Marginalia package
(use-package marginalia
  ;; Either bind `marginalia-cycle' globally or only in the minibuffer
  :bind (("M-A" . marginalia-cycle)
         :map minibuffer-local-map
         ("M-A" . marginalia-cycle))
  ;; The :init configuration is always executed (Not lazy!)
  :init
  ;; Must be in the :init section of use-package such that the mode gets
  ;; enabled right away. Note that this forces loading the package.
  (marginalia-mode))

(use-package avy
  :bind
  (("C-c a" . 'avy-goto-char-timer)))

(use-package evil
  :init
  (evil-mode))

(use-package fzf
  :bind
  (("C-c f" . 'fzf-projectile)))

(use-package projectile)

(provide 'init-edit)

;; Load path
;; Optimize: Force "lisp"" and "site-lisp" at the head to reduce the startup time.
(defun update-load-path (&rest _)
  "Update `load-path'."
  (dolist (dir '("site-lisp" "lisp"))
    (push (expand-file-name dir user-emacs-directory) load-path)))

(update-load-path)

(require 'init-package)
(require 'init-edit)
(require 'init-company)
(require 'init-lsp)
(require 'init-rime)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3e374bb5eb46eb59dbd92578cae54b16de138bc2e8a31a2451bf6fdb0f3fd81b" "72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe" default))
 '(package-selected-packages
   '(magit rime emacs-rime hl-line-mode flycheck ivy-avy lsp-ivy haskell-tab-indent yasnippet-snippets yas-snippets yasnippet highlight-indentation company-box treemacs gruvbox-theme which-key use-package tree-sitter paradox lsp-ui lsp-pyright lsp-haskell haskell-mode gnu-elpa-keyring-update eglot diminish company))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

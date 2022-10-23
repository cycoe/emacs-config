(use-package org
  :ensure nil
  :config
  ;; Babel
  (setq org-confirm-babel-evaluate nil
	org-src-fontify-natively t
	org-src-tab-acts-natively t)
  (defvar load-language-list
    '((emacs-lisp . t)
      (python . t)
      (c++ . t))))

(provide 'init-org)

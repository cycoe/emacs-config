(use-package rime
  :config
  (setq rime-show-candidate 'minibuffer
	rime-posframe-style 'vertical
	rime-disable-predicates
	'(rime-predicate-evil-mode-p
	  rime-predicate-after-alphabet-char-p
	  rime-predicate-after-ascii-char-p
          rime-predicate-prog-in-code-p
	  rime-predicate-space-after-cc-p)))

(provide 'init-rime)

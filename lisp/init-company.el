(use-package company
  :hook (prog-mode . company-mode)
  :bind
  (:map
   company-active-map
   ("TAB" . company-complete-common-or-cycle)
   ("<tab>" . company-complete-common-or-cycle)
   ("<backtab>" . company-select-previous-or-abort)
   ("C-s" . company-filter-candidates))
  :init
  (setq company-tooltip-align-annotations t
	company-idle-delay 0
	company-echo-delay (if (display-graphic-p) nil 0)
	company-minimum-prefix-length 1
	company-icon-margin 3
	company-backends '((company-capf :with company-yasnippet)
			   (company-dabbrev-code company-keywords company-files)
			   (company-dabbrev))))

(use-package company-box
  :if window-system
  :hook (company-mode . company-box-mode))

(use-package yasnippet
  :hook
  (prog-mode . yas-minor-mode))

(use-package yasnippet-snippets
  :after yasnippet)

(provide 'init-company)

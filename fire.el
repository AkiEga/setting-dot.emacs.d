(menu-bar-mode 1)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(global-visual-line-mode 1)

(autoload 'markdown-mode "markdown-mode.el" 
  "Major mode for editing Markdown files" t) 
(setq auto-mode-alist 
  (cons '("\\.text" . markdown-mode) auto-mode-alist))

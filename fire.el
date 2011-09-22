(menu-bar-mode 1)
(global-visual-line-mode 1)

(let ((default-directory "~/.emacs.d/site-lisp/"))
      (setq load-path
            (append
             (let ((load-path (copy-sequence load-path))) ;; Shadow
               (append 
                (copy-sequence (normal-top-level-add-to-load-path '(".")))
                (normal-top-level-add-subdirs-to-load-path)))
             load-path)))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(autoload 'markdown-mode "markdown-mode.el" 
  "Major mode for editing Markdown files" t) 
(setq auto-mode-alist 
  (cons '("\\.markdown" . markdown-mode) auto-mode-alist))

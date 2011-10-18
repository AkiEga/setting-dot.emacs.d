(menu-bar-mode 1)
(global-visual-line-mode 1)
;;(scroll-bar-mode 1)

(delete-selection-mode t)
(setq redisplay-dont-pause t)

(setq ispell-program-name "/usr/local/bin/aspell")
(setq ispell-skip-html t)
(setq ispell-dictionary "canadian")

(let ((default-directory "~/.emacs.d/site-lisp/"))
  (setq load-path
        (append
         (let ((load-path (copy-sequence load-path))) ;; Shadow
           (append 
            (copy-sequence (normal-top-level-add-to-load-path '(".")))
            (normal-top-level-add-subdirs-to-load-path)))
         load-path)))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(condition-case nil
    (load-theme 'zenburn t)
  (wrong-number-of-arguments
   (load-theme 'zenburn)))

(autoload 'markdown-mode "markdown-mode.el" 
  "Major mode for editing Markdown files" t) 
(add-hook 'markdown-mode-hook 'turn-off-auto-fill)

(require `lua-mode)
(require `lua2-mode)
(require `yaml-mode)

(setq auto-mode-alist
  (append 
   '(
     ;; Markup
     ("\\.markdown" . markdown-mode)
     ("\\.md" . markdown-mode)
     ("\\.yaml" . yaml-mode)
     ("\\.proto\\'" . protobuf-mode)
     ;; Config
     ("\\.com'" . nginx-mode)
     ;; Programming
     ("\\.hs'" . haskell-mode)
     ("\\.lua'" . lua2-mode))
   auto-mode-alist))

;; Originally from stevey, adapted to support moving to a new directory.
(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive
   (progn
     (if (not (buffer-file-name))
         (error "Buffer '%s' is not visiting a file!" (buffer-name)))
     (list (read-file-name (format "Rename %s to: " (file-name-nondirectory
                                                     (buffer-file-name)))))))
  (if (equal new-name "")
      (error "Aborted rename"))
  (setq new-name (if (file-directory-p new-name)
                     (expand-file-name (file-name-nondirectory
                                        (buffer-file-name))
                                       new-name)
                   (expand-file-name new-name)))
  ;; If the file isn't saved yet, skip the file rename, but still update the
  ;; buffer name and visited file.
  (if (file-exists-p (buffer-file-name))
      (rename-file (buffer-file-name) new-name 1))
  (let ((was-modified (buffer-modified-p)))
    ;; This also renames the buffer, and works with uniquify
    (set-visited-file-name new-name)
    (if was-modified
        (save-buffer)
      ;; Clear buffer-modified flag caused by set-visited-file-name
      (set-buffer-modified-p nil))
  (message "Renamed to %s." new-name)))

(defun unfill-region (start end)
  (interactive "r")
  (let ((fill-column (point-max)))
    (fill-region start end nil)))

(autoload 'auto-capitalize-mode "auto-capitalize"
  "Toggle `auto-capitalize' minor mode in this buffer." t)
(autoload 'turn-on-auto-capitalize-mode "auto-capitalize"
  "Turn on `auto-capitalize' minor mode in this buffer." t)
(autoload 'enable-auto-capitalize-mode "auto-capitalize"
  "Enable `auto-capitalize' minor mode in this buffer." t)
(setq auto-capitalize-words '("BCIT" "BUSA" "I"))
(add-hook 'markdown-mode-hook 'turn-on-auto-capitalize-mode)

(speedbar)
(setq speedbar-show-unknown-files t)

(global-linum-mode 1)
(setq linum-format "%4d ")

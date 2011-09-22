;;; solarized-theme.el --- Custom face theme for Emacs

;; Copyright (C) 2010 ad.

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

;; Note: This is, more or less, the same version as in
;; https://gist.github.com/888286 but converted for Emacs 24.

(deftheme solarized-light
  "")

(custom-theme-set-faces
 'solarized-light
 '(default ((t (:background "#fdf6e3" :foreground "#657b83")))) ;; #657b83 #839496
 '(cursor ((t (:background "#93a1a1" :foreground "#93a1a1"))))
 '(region ((t (:background "#eee8d5"))))
 '(mode-line-inactive ((t (:background "#93a1a1" :foreground "#eee8d5"))))
 '(mode-line ((t (:background "#eee8d5" :foreground "#839496"))))
 '(fringe ((t (:foreground "#93a1a1" :background "#eee8d5"))))
 '(minibuffer-prompt ((t (:foreground "#268bd2"))))
 '(font-lock-builtin-face ((t (:foreground "#859900"))))
 '(font-lock-comment-face ((t (:foreground "#93a1a1" :italic t)))) ; italic ja!
 '(font-lock-constant-face ((t (:foreground "#2aa198"))))
 '(font-lock-function-name-face ((t (:foreground "#268bd2"))))
 '(font-lock-keyword-face ((t (:foreground "#859900"))))
 '(font-lock-string-face ((t (:foreground "#2aa198"))))
 '(font-lock-type-face ((t (:foreground "#b58900"))))
 '(font-lock-variable-name-face ((t (:foreground "#268bd2"))))
 '(font-lock-warning-face ((t (:foreground "#d30102" :weight bold))))
 '(isearch ((t (:foreground "#b58900" :inverse-video t))))
 '(lazy-highlight ((t (:background "#eee8d5")))) ; second highlight, typ?
 '(link ((t (:foreground "#6c71c4" :underline t))))
 '(link-visited ((t (:foreground "#8b008b" :underline t)))) ;; eh?
 '(button ((t (:underline t :background "#eee8d5"))))
 '(header-line ((t (:background "#eee8d5" :foreground "#839496"))))

 ;; moar!
 '(magit-item-highlight ((t (:background "#eee8d5")))))

(provide-theme 'solarized-light)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; solarized-theme.el  ends here

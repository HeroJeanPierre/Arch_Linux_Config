
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(setq scroll-step            1
      scroll-conservatively  10000)

;; Remove the menu bar from the top, to see it simply enter F10
(menu-bar-mode -1)

;disable backup
(setq backup-inhibited t)

;disable auto save
(setq auto-save-default nil)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(require 'multiple-cursors)
(global-set-key (kbd "C-c C-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


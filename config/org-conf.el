;;; org-conf.el --- 
;; -*- coding: utf-8 -*-
;; -*- mode: Emacs-Lisp -*-
;; Time-stamp: <2013-03-05 09:28:33 Tanis Zhang>

;; http://emacser.com/org-mode.htm
;; http://blog.csdn.net/meteor1113/article/details/4395673

(require 'org-install)
(require 'org-publish)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook 
          (lambda () (setq truncate-lines nil)))
 
;;(global-set-key "\C-cl" 'org-store-link)
;;(global-set-key "\C-ca" 'org-agenda)
;;(global-set-key "\C-cb" 'org-iswitchb)

(load "~/emacs/content/org/note-dir-init")

;;; org-conf.el ends here

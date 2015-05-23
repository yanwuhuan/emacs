;;; org-conf.el --- 
;; -*- coding: utf-8 -*-
;; -*- mode: Emacs-Lisp -*-
;; Time-stamp: <2015-02-05 16:15:12 Tanis Zhang>

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

;;(load "~/.emacs/content/org/note-dir-init")

(setq org-hide-leading-stars t)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)


;; all .org opened by indent mode
(setq org-startup-indented t)

;; set a project to publish
(setq org-publish-project-alist
     '(("orgdoc"
        :base-directory "~/.emacs/content/orgdoc/"
        :publishing-directory "~/WebRoot/org-mode"
        :section-numbers nil
        :table-of-contents 3
        :style "<link rel=\"stylesheet\"
               href=\"../org.css\"
               type=\"text/css\"/>")))

;;; org-conf.el ends here

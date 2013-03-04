;;; auto-complete-conf.el --- 
;; -*- coding: utf-8 -*-
;; -*- mode: Emacs-Lisp -*-
;; Time-stamp: <2013-03-04 17:24:52 Tanis Zhang>
;; From http://emacser.com/auto-complete.htm


;; Add to load path
(add-to-list 'load-path "~/emacs/packages/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/emacspackages/auto-complete/ac-dict")
(ac-config-default)

;;; auto-complete-conf.el ends here

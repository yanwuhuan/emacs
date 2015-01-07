;;; auto-complete-conf.el --- 
;; -*- coding: utf-8 -*-
;; -*- mode: Emacs-Lisp -*-
;; Time-stamp: <2013-03-07 15:25:01 Tanis Zhang>
;; From http://emacser.com/auto-complete.htm


;; Add to load path
(add-to-list 'load-path "~/.emacs/packages/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs/packages/auto-complete/ac-dict")
(ac-config-default)

;; open it global
(global-auto-complete-mode t)

(global-set-key (kbd "M-[") 'auto-complete)

;; color of pop-up menu
(set-face-background 'ac-candidate-face "#657B83")
(set-face-underline-p 'ac-candidate-face "#657B83")
(set-face-background 'ac-selection-face "#93A1A1")

; setup ac-sources
(setq-default ac-sources '(
                           ac-source-filename
                           ac-source-words-in-all-buffer
                           ac-source-functions
                           ac-source-variables
                           ac-source-symbols
                           ac-source-features
                           ac-source-abbrev
                           ac-source-words-in-same-mode-buffers
                           ac-source-dictionary
                           ac-source-files-in-current-dir
                                        ; need to install yasnippet, and need before this config
                           ;;ac-source-yasnippet
                           ))
(setq ac-modes
      (append ac-modes '(org-mode
                         text-mode
                         makefile-gmake-mode
                         makefile-bsdmake-mo
                         autoconf-mode
                         makefile-automake-mode
                         lua-mode
                         )))


;;; auto-complete-conf.el ends here
 

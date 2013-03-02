;;; emacs.el ---
;; -*- coding: utf-8 -*-
;; -*- mode: Emacs-Lisp -*-
;; Time-stamp: <2012-07-06 14:46:17 Tanis Zhang>

(add-to-list 'load-path "~/emacs/packages/lua-mode")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

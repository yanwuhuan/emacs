;; lua-conf.el ---
;; -*- coding: utf-8 -*-
;; -*- mode: Emacs-Lisp -*-
;; Time-stamp: <2013-07-09 18:29:35 Tanis Zhang>

(add-to-list 'load-path "~/emacs/packages/lua-mode")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
(setq lua-default-application "~/Apps/Develop/Lua/5.1/lua.exe")

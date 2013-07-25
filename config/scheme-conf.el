;;; scheme-conf.el ---
;; -*- coding: utf-8 -*-
;; -*- mode: Emacs-Lisp -*-
;; Time-stamp: <2013-07-25 18:52:13 Tanis Zhang>

;; from https://github.com/yinwang0/blog-cn/blob/gh-pages/_posts/2013-04-11-scheme-setup.md

;; 以半结构化编辑方式编辑文件
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code."
  t)

;; 调整lisp、scheme等的括号颜色，使其看起来不显眼
(require 'parenface)
(set-face-foreground 'paren-face "DimGray")

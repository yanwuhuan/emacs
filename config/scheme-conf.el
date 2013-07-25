;;; scheme-conf.el ---
;; -*- coding: utf-8 -*-
;; -*- mode: Emacs-Lisp -*-
;; Time-stamp: <2013-07-25 18:52:13 Tanis Zhang>

;; from https://github.com/yinwang0/blog-cn/blob/gh-pages/_posts/2013-04-11-scheme-setup.md

;; �԰�ṹ���༭��ʽ�༭�ļ�
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code."
  t)

;; ����lisp��scheme�ȵ�������ɫ��ʹ�俴����������
(require 'parenface)
(set-face-foreground 'paren-face "DimGray")

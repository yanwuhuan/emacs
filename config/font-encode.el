;;; font-encode.el --- 
;; -*- coding: utf-8 -*-
;; -*- mode: Emacs-Lisp -*-
;; Time-stamp: <2014-12-13 14:34:48 Tanis Zhang>


;============================ ���Ի����ַ������� =================================
;;��һ������Ҫ����linux �����£�windows��ûʲô����
;; (set-language-environment 'Chinese-GB)
;; (set-keyboard-coding-system 'utf-8)
;; (set-clipboard-coding-system 'utf-8)
;; (set-terminal-coding-system 'utf-8)
;; (set-buffer-file-coding-system 'utf-8)
;; (set-default-coding-systems 'utf-8)
;; (set-selection-coding-system 'utf-8)
;; (modify-coding-system-alist 'process "*" 'utf-8)
;; (setq default-process-coding-system '(utf-8 . utf-8))
;; (setq-default pathname-coding-system 'utf-8)
;; (set-file-name-coding-system 'utf-8)
;; (setq ansi-color-for-comint-mode t) ;;����shell-mode����,����û����

;;;; Windows ��
;;;;;;;;(set-language-environment 'Chinese-GB18030)
;;(setq current-language-environment "UTF-8")
;;(setq locale-coding-system 'utf-8)
;;(set-terminal-coding-system 'utf-8)
;;(set-keyboard-coding-system 'utf-8)
;;(set-selection-coding-system 'utf-8)
;;(prefer-coding-system 'utf-8)

;=========================== ���Ի����ַ������ý��� ===============================



;============================ MS Windows�������������� ===========================
;(setq default-frame-alist
;;(append
;;  '((font . "fontset-chinese")) default-frame-alist))


;;(create-fontset-from-fontset-spec
;;  "-outline-Courier New-normal-r-normal-normal-13-97-96-96-c-*-fontset-chinese")
;;(set-fontset-font
;; "fontset-default" nil
;; "-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;;(set-fontset-font
;; "fontset-chinese" 'kana
;; "-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;;(set-fontset-font
;; "fontset-chinese" 'han
;; "-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;;(set-fontset-font
;; "fontset-chinese" 'cjk-misc
;; "-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;;(set-fontset-font
;; "fontset-chinese" 'symbol
;; "-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;;(set-default-font "fontset-chinese")

;===========================MS Windows�������������ý��� =========================


;============================ Linux�������������� =================================

;; (create-fontset-from-fontset-spec
;; "-*-courier-medium-r-normal-*-14-*-*-*-*-*-fontset-courier")
;; (set-default-font "fontset-courier")
;; (setq default-frame-alist
;; (append
;; '((font . "fontset-courier")) default-frame-alist))

;; (set-fontset-font
;; "fontset-default" nil
;; "-*-simsun-*-*-*-*-14-*-*-*-*-*-gb2312.1980-*" nil 'prepend)
;; (set-fontset-font
;; "fontset-courier" 'kana
;; "-*-simsun-*-*-*-*-14-*-*-*-*-*-gbk-0" nil 'prepend)
;; (set-fontset-font
;; "fontset-courier" 'han
;; "-*-simsun-*-*-*-*-14-*-*-*-*-*-gbk-0" nil 'prepend)
;; (set-fontset-font
;; "fontset-courier" 'cjk-misc
;; "-*-simsun-*-*-*-*-14-*-*-*-*-*-gbk-0" nil 'prepend)

;============================ Linux�������������ý��� ==============================

;;;;;;;;;;;;;;;;;;;;���Ի����������ý���;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;�����Ӣ�Ļ��Ų�����ȷfill������,����ûʲô��
;; (put-charset-property 'chinese-cns11643-5 'nospace-between-words t)
;; (put-charset-property 'chinese-cns11643-6 'nospace-between-words t)
;; (put-charset-property 'chinese-cns11643-7 'nospace-between-words t)


;; Setting English Font
;;(set-face-attribute
;;  'default nil :font "Consolas 11")
 
;; Chinese Font
;;(dolist (charset '(kana han symbol cjk-misc bopomofo))
;;    (set-fontset-font (frame-parameter nil 'font)
;;                      charset
;;                      (font-spec :family "Microsoft Yahei" :size 12)))

;;;(set-default-font "-outline-YaHei Consolas Hybrid-normal-normal-normal-sans-19-*-*-*-p-*-iso8859-1")
(custom-set-faces
 '(default ((t (:family "΢���ź�" :foundry "outline" :slant normal :weight normal :height 118 :width normal)))))
;;; font-encode.el ends here

;;; emacs.el ---
;; -*- coding: utf-8 -*-
;; -*- mode: Emacs-Lisp -*-
;; Time-stamp: <2013-03-08 18:30:09 Tanis Zhang>


;; 将软件包所在的路径加到 EMACS 的 load-path
(add-to-list 'load-path "~/emacs/packages/others")

(load "gnuserv")
(gnuserv-start)
;;设置有用的个人信息,这在很多地方有用。
(setq user-full-name "Zhang Tanis")
(setq user-mail-address "tanis.zhang@gmail.com")

;; 设置时间戳，标识出最后一次保存文件的时间。
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(add-hook 'write-file-hooks 'time-stamp)
(setq time-stamp-format "%:y-%02m-%02d %02H:%02M:%02S Tanis Zhang")

;;; 
;;; color-theme
(add-to-list 'load-path "~/emacs/packages/color-theme")
(require 'color-theme)
;;(eval-after-load "color-theme"
;;  '(progn
;;     (color-theme-initialize)
;;     (color-theme-blackboard)))
(color-theme-initialize)
(load-library "~/emacs/config/color-theme-blackboard")
(color-theme-blackboard)


(load-library "~/emacs/config/font-encode")

;;;;;;;;;;;;;;;;;;;;;;;;;;;  设置窗口界面 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;取消滚动栏
(set-scroll-bar-mode nil)

;;设置滚动栏在窗口右侧，而默认是在左侧
;;(customize-set-variable 'scroll-bar-mode 'right))

;;取消工具栏
(tool-bar-mode nil)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;  设置界面结束  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;   显示时间设置   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上
(setq display-time-24hr-format t);;时间使用24小时制
(setq display-time-day-and-date t);;时间显示包括日期和具体时间
;;(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置
;;(setq display-time-interval 10);;时间的变化频率，单位多少来着？
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;  显示时间设置结束  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;定制操作习惯;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;关闭烦人的出错时的提示声
(setq visible-bell t)
;;关闭emacs启动时的画面
(setq inhibit-startup-message t)

;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。
(fset 'yes-or-no-p 'y-or-n-p)

;;显示行列号
(setq column-number-mode t)
(setq line-number-mode t)

;; Move mouse point if cursor close to it
(mouse-avoidance-mode 'animate)

;;不要在鼠标点击的那个地方插入剪贴板内容。我不喜欢那样，经常把我的文档搞的一团糟。我觉得先用光标定位，然后鼠标中键点击要好的多。不管你的光标在文档的那个位置，或是在 minibuffer，鼠标中键一点击，X selection 的内容就被插入到那个位置。
(setq mouse-yank-at-point t)

;;设置粘贴缓冲条目数量.用一个很大的kill ring(最多的记录个数). 这样防止我不小心删掉重要的东西
(setq kill-ring-max 200)

; Autofill in all modes;;
(setq-default auto-fill-function 'do-auto-fill)

;;把 fill-column 设为 160
(setq default-fill-column 160)

;;不用 TAB 字符来indent, 这会引起很多奇怪的错误。编辑 Makefile 的时候也不用担心，因为 makefile-mode 会把 TAB 键设置成真正的 TAB 字符，并且加亮显示的。
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-stop-list ())

;;可以递归的使用 minibuffer
(setq enable-recursive-minibuffers t)

;;设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。
(setq show-paren-mode t) ;;打开括号匹配显示模式
(setq show-paren-style 'parenthesis)

;;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用的提示。
(setq frame-title-format "%b@emacs")

;;让 Emacs 可以直接打开和显示图片。
(setq auto-image-file-mode t)

;打开压缩文件时自动解压缩。
;(auto-compression-mode 1)  

;;进行语法加亮。
(setq global-font-lock-mode t)

;; 不生成临时文件
(setq-default make-backup-files nil)

;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)

;;使用鼠标中键可以粘贴
(setq mouse-yank-at-point t)

;; 自动的在文件末增加一新行
(setq require-final-newline t)

;; 当浏览 man page 时，直接跳转到 man buffer。
(setq Man-notify-method 'pushy)

;; 用下面的来实现Alt-x，定义两个是为容错
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)

;; 用backward-kill-word删除词，backspace键反而更慢
;; 另外多数unix shell也是这个操作，可以保持一致
(global-set-key (kbd "C-w") 'backward-kill-word)
;; C-w本来的映射定义到这里，定义两个是为容错
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;定制操作习惯结束;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; template files in ~/.template
(require 'template)
(template-initialize)
;;; >>>AUTHOR<<< is user-mail-address


(load-library "~/emacs/config/muse-init")
(load-library "~/emacs/config/calendar")
(load-library "~/emacs/config/tabbar-conf")
(load-library "~/emacs/config/ssh-conf")
(load-library "~/emacs/config/developer")
(load-library "~/emacs/config/markdown-conf")
(load-library "~/emacs/config/python-conf")
(load-library "~/emacs/config/lua-conf")
(require 'taglist)
;;(load-library "~/emacs/config/yasnippet-conf")
(load-library "~/emacs/config/auto-complete-conf")
;; should be last, ensure key-define active by this config
(load-library "~/emacs/config/keypad")

;;; w3m, seems useless
;(add-to-list 'exec-path "~/emacs/packages/w3mbin")
;(add-to-list 'load-path "~/emacs/packages/emacs-w3m")
;(require 'w3m-load)
;(setq w3m-use-favicon nil)
;(setq w3m-command-arguments '("-cookie" "-F"))
;(setq w3m-use-cookies t)
;(setq w3m-home-page "")     


;;; org-mode
(setq org-hide-leading-stars t)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)


;; http://blog.csdn.net/delphinew/article/details/1881858
;byte编译一个目录下的所有el文件
(defun byte-compile-directory (dir)
  "byte compile a directory"
  (interactive "D")
  ;(message dir)
  (mapcar #'(lambda(file)
            (when (string-equal (file-name-extension  file) "el")
              (byte-compile-file (concat dir file))))
              ;(message (concat dir file))))
              (directory-files dir)))

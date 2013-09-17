;;; emacs.el ---
;; -*- coding: utf-8 -*-
;; -*- mode: Emacs-Lisp -*-
;; Time-stamp: <2013-09-17 18:05:08 Tanis Zhang>


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
(scroll-bar-mode 0)
;;(set-scroll-bar-mode nil)

;;设置滚动栏在窗口右侧，而默认是在左侧
;;(customize-set-variable 'scroll-bar-mode 'right))

;;取消工具栏
(tool-bar-mode 0)



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

;; 语法高亮。除 shell-mode 和 text-mode 之外的模式中使用语法高亮。
(setq font-lock-maximum-decoration t)
(setq font-lock-global-modes '(not shell-mode text-mode))
(setq font-lock-verbose t)
(setq font-lock-maximum-size '((t . 1048576) (vm-mode . 5250000)))

;;显示行列号
(setq column-number-mode t)
(setq line-number-mode t)

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

;;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插入两个空格。
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;;可以递归的使用 minibuffer
(setq enable-recursive-minibuffers t)

;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文。
(setq scroll-margin 3  scroll-conservatively 10000)

;;设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。
(show-paren-mode t)
;;(setq show-paren-mode t) 
(setq show-paren-style 'parenthesis)

;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
(setq mouse-avoidance-mode 'animate)

;;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用的提示。
(setq frame-title-format "%b@emacs")

;; 当有两个文件名相同的缓冲时，使用前缀的目录名做 buffer 名字，不用原来的foobar<?> 形式。
(setq uniquify-buffer-name-style 'forward);;好像没起作用

;;让 Emacs 可以直接打开和显示图片。
(setq auto-image-file-mode t)
;;; (auto-image-file-mode t)

;打开压缩文件时自动解压缩。
;(auto-compression-mode 1)  

;;进行语法加亮。
(setq global-font-lock-mode t)
;;; Also highlight parens   
(setq show-paren-delay 0  
      show-paren-style 'parenthesis)  

;; 在行首 C-k 时，同时删除该行。
(setq-default kill-whole-line t)

;;当你在shell、telnet、w3m等模式下时，必然碰到过要输入密码的情况,此时加密显出你的密码
(add-hook 'comint-output-filter-functions
      'comint-watch-for-password-prompt)
;;启用版本控制，即可以备份多次
;(setq version-control t)
;;备份最原始的版本两次，及第一次编辑前的文档，和第二次编辑前的文档
;(setq kept-old-versions 2)
;;备份最新的版本1次，理解同上
;(setq kept-new-versions 1)
;;删掉不属于以上3中版本的版本
;(setq delete-old-versions t)
;;设置备份文件的路径
;(setq backup-directory-alist '(("." . "~/backups")))
;(setq backup-by-copying t);;备份设置方法，直接拷贝
;; Emacs 中，改变文件时，默认都会产生备份文件(以 ~ 结尾的文件)。可以完全去掉
;; (并不可取)，也可以制定备份的方式。这里采用的是，把所有的文件备份都放在一
;; 个固定的地方("~/backups")。对于每个备份文件，保留最原始的两个版本和最新的
;; 1个版本。并且备份的时候，备份文件是复本，而不是原件。

(setq auto-save-mode nil)

;; 不生成临时文件
(setq-default make-backup-files nil)

;允许屏幕左移
(put 'scroll-left 'disabled nil)
;允许屏幕右移
(put 'scroll-right 'disabled nil)    
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)
;;把这些缺省禁用的功能打开。

;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)

;;使用鼠标中键可以粘贴
(setq mouse-yank-at-point t)

;; 自动的在文件末增加一新行
(setq require-final-newline t)

;;Non-nil if Transient-Mark mode is enabled.
(setq-default transient-mark-mode t)

;; 当光标在行尾上下移动的时候，始终保持在行尾。
(setq track-eol t)

;; 当浏览 man page 时，直接跳转到 man buffer。
(setq Man-notify-method 'pushy)

;;允许临时设置标记，高亮显示要拷贝的区域
(transient-mark-mode t)

;; Open file more easy
(require 'ido)
(ido-mode t)
;;可以显示所有目录以及文件
(setq speedbar-show-unknown-files t)
;;不自动刷新，手动 g 刷新
(setq dframe-update-speed nil)
(setq speedbar-update-flag nil)
;;不使用 image 的方式
(setq speedbar-use-images nil)
(setq speedbar-verbosity-level 0)


;;让 dired 可以递归的拷贝和删除目录。
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

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


;===================== template设置 =================================
(require 'template)
(template-initialize)
;; ido-mode skip find-file-not-found, so should be add this
;; http://linux.chinaunix.net/techdoc/system/2006/07/22/936546.shtml
(add-to-list 'template-find-file-commands
         'ido-exit-minibuffer)
;;; >>>AUTHOR<<< is user-mail-address
;===================== template设置结束===============================

(load-library "~/emacs/config/muse-init")
(load-library "~/emacs/config/calendar")
(load-library "~/emacs/config/tabbar-conf")
(load-library "~/emacs/config/ssh-conf")
(load-library "~/emacs/config/developer")
(load-library "~/emacs/config/markdown-conf")
(load-library "~/emacs/config/python-conf")
(load-library "~/emacs/config/lua-conf")
(load-library "~/emacs/config/scheme-conf")
(load-library "~/emacs/config/org-conf")
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

;; for find
(setq find-program "gfind")

;;; http://hi.baidu.com/4shop/blog/item/426316f7371de52a720eecfc.html
(add-to-list 'load-path "~/.emacs/packages/python-mode")
;(add-to-list 'load-path "~/.emacs/packages/python-mode/completion")

;(require 'python-mode)
;(require 'pymacs)

;(setq auto-mode-alist
;      (cons '("\\.py$" . python-mode) auto-mode-alist))
;(setq interpreter-mode-alist
;      (cons '("python" . python-mode) interpreter-mode-alist))
;(autoload 'python-mode "python-mode" "Python editing mode." t)


;; Initialize Pymacs                                                                                           
;(autoload 'pymacs-apply "pymacs")
;(autoload 'pymacs-call "pymacs")
;(autoload 'pymacs-eval "pymacs" nil t)
;(autoload 'pymacs-exec "pymacs" nil t)
;(autoload 'pymacs-load "pymacs" nil t)

;;; add these lines if you like color-based syntax highlighting
; what's this?
; (setq font-lock-maximum-decoration t)



;;{{{ python-mode : add python-mode support
(autoload 'python-mode "python-mode" "Python editing mode." t)
(add-hook 'python-mode-common-hook 'my-mode-common-hook)
;;}}}

(setq auto-mode-alist
      (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist
      (cons '("python" . python-mode) interpreter-mode-alist))


;; from http://wiki.woodpecker.org.cn/moin/EmacsSuperEasyTutorial
;; set Python mode
;; 代码折叠设置来自 gb@cs.unc.edu， 感谢他。
(add-hook 'python-mode-hook 'python-mode-hook t)

(defun py-outline-level ()
  (let (buffer-invisibility-spec)
        (save-excursion
          (skip-chars-forward "\t ")
          (current-column))))

(defun python-mode-hook ()
  ; this gets called by outline to deteremine the level. Just use the length of the whitespace
  (custom-set-variables
        '(indent-tabs-mode nil)
        '(tab-width 4)
        '(tab-width 4)
        '(tab-stop-list nil)
        )

  ; outline uses this regexp to find headers. I match lines with no indent and indented "class"
  ; and "def" lines.
  ; 这里我利用了 Martin Sand Christensen 提供的正则表达式，感谢他。
  (setq outline-regexp "[^ \t]\\|[ \t]*\\(def\\|class\\|if\\|elif\\|else\\|while\\|for\\|try\\|except\\|finally|with\\) ")
  ; enable our level computation
  (setq outline-level 'py-outline-level)
  ; turn on outline mode
  (outline-minor-mode t)
  ; make paren matches visible
  (show-paren-mode 1)
)

;;; http://hi.baidu.com/4shop/blog/item/426316f7371de52a720eecfc.html
(add-to-list 'load-path "~/emacs/packages/python-mode")
;(add-to-list 'load-path "~/emacs/packages/python-mode/completion")

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

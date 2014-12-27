;;
(require 'php-mode)
(add-hook 'php-mode-hook
          (function (lambda ()
                      ;; GNU style
                      (setq php-indent-level 4
                            php-continued-statement-offset 4
                            php-continued-brace-offset 0
                            php-brace-offset 0
                            php-brace-imaginary-offset 0
                            php-label-offset -4
                            c-set-style "K&R"
                            ))))

;;多窗口的gdb
(setq gdb-many-windows t)

;shell,gdb退出后，自动关闭该buffer
(add-hook 'shell-mode-hook 'autokill-buf-on-exit-func)
(add-hook 'gdb-mode-hook 'autokill-buf-on-exit-func)
(add-hook 'comint-mode-hook 'autokill-buf-on-exit-func)
(defun autokill-buf-on-exit-func ()
  (set-process-sentinel (get-buffer-process (current-buffer))
         #'kill-buffer-on-exit))
(defun kill-buffer-on-exit (process state)
  (message "%s" state)
  (if (or
       (string-match "exited abnormally with code.*" state)
       (string-match "finished" state))
      (kill-buffer (current-buffer))))

(defun lua-shell()
  "make a lua shell"
  (interactive)
  (switch-to-buffer (make-comint "lua" "~/Apps/Develop/Lua/5.1/lua.exe" nil "-i")))
;;; http://blog.csdn.net/delphinew/article/details/1900985
(defun python-shell()
  "make a python shell"
  (interactive)
  (switch-to-buffer (make-comint "python" "python2" nil "-i")))
(defun groovy-shell()
  "make a groovy shell"
  (interactive)
  (switch-to-buffer (make-comint "groovy" "groovysh" nil)))
(defun perl-shell()
  "make a perl db shell"
  (interactive)
  (switch-to-buffer (make-comint "perl" "perl" nil "-d -e''")))

;; for scheme
;;(setq scheme-program-name "mzscheme.exe -i")
(setq scheme-program-name "D:/MyHome/Apps/Develop/ChezScheme/bin/ti3nt/petite.exe")

;; for cscope
(add-hook 'c-mode-common-hook  
          '(lambda ()  
             (require 'xcscope)))
(setq cscope-do-not-update-database t)

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


(defun lua-shell()
  "make a lua shell"
  (interactive)
  (switch-to-buffer (make-comint "lua" "lua" nil "-i")))
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

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

;
;--*-- coding: utf-8 --*--
;

(autoload 'markdown-mode "markdown-mode"
    "Major mode for editing Markdown files" t)
(setq auto-mode-alist
       (append '(("\\.markdown$" . markdown-mode)
                 ("\\.md$" . markdown-mode)) auto-mode-alist))

(defun markdown-custom ()
  "markdown-mode-hook"
  (setq markdown-command "C:\\Perl\\bin\\perl.exe D:\\MyHome\\bin\\markdown.pl"))
;;  (setq markdown-command "D:/MyHome/Apps/Develop/Python27/Scripts/markdown_py.bat"))
(add-hook 'markdown-mode-hook '(lambda() (markdown-custom)))
